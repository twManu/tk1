//----------------------------------------------------------------------------------
// File:        NvAppBase/NvAppBase.h
// SDK Version: v2.1 
// Email:       gameworks@nvidia.com
// Site:        http://developer.nvidia.com/
//
// Copyright (c) 2014, NVIDIA CORPORATION. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//  * Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of NVIDIA CORPORATION nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//----------------------------------------------------------------------------------

// simple SDK app interface
// abstract base class
#ifndef NV_APP_BASE_H
#define NV_APP_BASE_H

#include <NvFoundation.h>
#include <string>
#include "NvGLAppContext.h"
#include "NvPlatformContext.h"
#include "NV/NvStopWatch.h"
#include "NvGamepad/NvGamepad.h"

/// \file
/// Application framework base class

/// A basic app framework, including mainloop, setup and input processing.
class NvAppBase : public NvInputCallbacks, public NvStopWatchFactory
{
public:
    /// Constructor
    /// Do NOT make rendering API calls in the constructor
    /// The rendering context is not bound until the entry into initRendering
    /// \param[in] platform the platform context representing the system, normally
    /// passed in from the #NvAppFactory
    /// \param[in] appTitle the null-terminated string title of the application
    NvAppBase(NvPlatformContext* platform, const char* appTitle);

    /// Destructor
    virtual ~NvAppBase();

    /// \name Mainloop Application Callbacks
    /// To be overridden in concrete application subclasses.
    ///@{

    /// Initialize rendering.
    /// Called once the GLES context and surface have been created and bound
    /// to the main thread.  Called again if the context is lost and must be
    /// recreated.
    virtual void initRendering(void) { }

    /// Shutdown rendering.
    /// Called when the GLES context has just been shut down; it indicates that
    /// all GL resources in the app's context have been deleted and are invalid, 
    /// and will need to be recreated on the next call to initRendering.  This 
    /// function should also be used to shut down any secondary threads that 
    /// generate GL calls such as buffer mappings.
    ///
    /// Because the sequence of shutdownRendering/initRendering may be called 
    /// without the app being completely shut down (e.g. lost context), the app
    /// needs to use this to delete non-GL resources (e.g. system memory related 
    /// to 3D resources) and indicate that it needs to reload any GL resources on
    /// initRendering
    virtual void shutdownRendering(void) { }

    /// Application animation update.
    /// Called at regular (frame-scale) intervals even if the app is not
    /// focused.  Always called directly before a render, but will be called
    /// without a render if the app is not focused.  Optional.
    virtual void update(void) { }

    /// Rendering callback.
    /// Called to request the app render a frame at regular intervals when
    /// the app is focused or when force by outside events like a resize
    virtual void draw(void) { }

    /// Resize callback.
    /// Called when the main rendering window changes dimensions and before
    /// the first frame is rendered after #initRendering
    /// \param[in] width the new window width in pixels
    /// \param[in] height the new window height in pixels
    virtual void reshape(int32_t width, int32_t height) { }

    /// Focus loss/gain callback.
    /// Called to indicate that the app's window has gained/lost focus
    /// \param[in] focused true if application is gaining focus, false if it is losing focus
    virtual void focusChanged(bool focused) { }

    ///@}

    /// \name InputCallback null implementations.
    ///@{
    // The following functions are implementations of the inherited #InputCallbacks
    // interface.  Apps can cause these to be used for input-handling by overriding
    // these functions in their own app and passing the App to the pollEvents function
    // as getPlatformContext()->pollEvents(this);.  This is how the App::mainLoop
    // function connects them
    // Return true if the app has handled the action, or false if the system
    // should process further as a fallback.  Calls are optional
    virtual bool handlePointerInput(NvInputDeviceType::Enum device, NvPointerActionType::Enum action, 
        uint32_t modifiers, int32_t count, NvPointerEvent* points, int64_t timestamp=0) { return false; }
    virtual bool handleKeyInput(uint32_t code, NvKeyActionType::Enum action) { return false; }
    virtual bool handleCharacterInput(uint8_t c) { return false; }
    virtual bool handleGamepadChanged(uint32_t changedPadFlags) { return false; }
    virtual bool handleGamepadButtonChanged(uint32_t button, bool down) { return false; }
    ///@}

    /// GL configuration request callback.
    /// This function passes in the default set of GL configuration requests
    /// The app can override this function and change the defaults before
    /// returning.  These are still requests, and may not be met.  If the
    /// platform supports requesting GL options, this function will be called
    /// before initGL.  Optional.
    /// \param[in,out] config the default config to be used is passed in.  If the application
    /// wishes anything different in the GL configuration, it should change those values before
    /// returning from the function.  These are merely requests.
    virtual void configurationCallback(NvEGLConfiguration& config) { }

    /// Get GL context info.
    /// \return the GL context info.  This will be NULL at app startup, and is likely to be NULL on some
    /// platforms until shouldRender returns true
    NvGLAppContext* getGLContext() { return mContext; }

    /// Set GL context info.
    /// \param[in] context the GL context info
    void setGLContext(NvGLAppContext* context) { mContext = context; }

    /// Get platform context.
    /// \return the platform context object.  This will be valid for the life of the App
    NvPlatformContext* getPlatformContext() { return mPlatform; }

    /// Mobile platform query.
    /// Convenience function for testing whether this is a "mobile" GPU platform
    /// \return true if the platform is mobile, false if it is desktop-class
    bool isMobilePlatform() { return getGLContext()->getPlatformInfo().mCategory 
        == NvGLPlatformCategory::PLAT_MOBILE;
    }

    /// Create a StopWatch.
    /// \return a pointer to a valid stopwatch object or NULL on failure
    virtual NvStopWatch* createStopWatch();

    /// Get high-performance timer value
    /// \return the number of "ticks" since the system was started.
    uint64_t queryPerformanceCounter();

    /// Get high-performance timer frequency
    /// \return the number of "ticks" per second, used to convert #queryPerformanceCounter to time.
    uint64_t queryPerformanceCounterFrequency();

    /// Show info/error dialog.
    /// Shows a dialog and, if desired, exits the app on dialog close
    /// \param[in] title a null-terminated string with the title for the dialog
    /// \param[in] contents a null-terminate string with the text to be shown in the dialog
    /// \param[in] exitApp if true, the app will exit when the dialog is closed.  Useful for error dialogs
    /// \return true on success, false on failure
    bool showDialog(const char* title, const char *contents, bool exitApp);

    /// Write RGB image to file
    /// Debugging function to write a block of RGB 24-bit data to an image file.
    /// Format and extension of the image file, as well as location is platform-specific.
    /// \param[in] width the width of the image to be written in pixels
    /// \param[in] height the height of the image to be written in pixels
    /// \param[in] data pointer to width*height*4 bytes with the RGBA image data.
    /// \param[in] path the partial (relative) path and filename (no extension) to be written
    /// with the pixel data.
    /// \return true on success and false on failure.
    bool writeScreenShot(int32_t width, int32_t height, const uint8_t* data, const std::string& path);

    /// Write text to logging file.
    /// Writes the given printf-like arguments to the specified log file.
    /// \param[in] path the partial path and filename to write.
    /// \param[in] append if true, the string is written to the end of the existing file.  If
    /// false, the file is cleared and the string written to the top of the file
    /// \param[in] fmt printf-style varargs format string and following arguments
    /// \return true on success, false on failure.
    bool writeLogFile(const std::string& path, bool append, const char* fmt, ...);

    /// Linker hack.
    /// An empty function that ensures the linker does not strip the framework
    // Function must be called in the concrete app subclass constructor to avoid link issues
    void forceLinkHack();

    /// Mainloop function.
    /// The base class provides an implementation of the mainloop that
    /// calls the virtual "callbacks" in the block below marked
    /// MAINLOOP CALLBACKS.  Leaving this function as implemented in the
    /// App base class allows the application to simply override the individual
    /// callbacks to implement their app behavior.
    /// However, apps can still copy the source of the App::mainLoop into their
    /// own override of the function and either modify it slightly or completely
    /// replace it.
    virtual void mainLoop();

    /// Window size request callback.
    /// Application must return true if it changes the width or height passed in
    /// Not all platforms can support setting the window size.  These platforms
    /// will not call this function
    /// Most apps should be resolution-agnostic and be able to run at a given
    /// resolution
    /// \param[in,out] width the default width is passed in.  If the application wishes
    /// to reuqest it be changed, it should change the value before returning true
    /// \param[in,out] height the default height is passed in.  If the application wishes
    /// to reuqest it be changed, it should change the value before returning true
    /// \return whether the value has been changed.  true if changed, false if not
    virtual bool getRequestedWindowSize(int32_t& width, int32_t& height) { return false; }

protected:
    /// Request exit.
    /// Called by the application subclass if it wishes to exit/quit
    void appRequestExit();

    /// Exit query.
    /// \return true if the application is in the process of exiting, false if not.
    bool isExiting() { return m_requestedExit; }

    int32_t m_width; ///< the current window width
    int32_t m_height; ///< the current window height

    /// \privatesection
    NvPlatformContext* mPlatform;
    NvGLAppContext* mContext;
    std::string mAppTitle;

    bool m_requestedExit;
};

/// App creation entrypoint.
/// App must define this and have it return an instance of their class
/// \param[in] platform the platform context to be used in the NvAppBase constructor call
/// \return an instance of the application's own subclass.
extern NvAppBase* NvAppFactory(NvPlatformContext* platform);

#endif
