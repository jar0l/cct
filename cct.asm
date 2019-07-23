;---------------------------------------------------------------------------------------------------------------------------
; Console Command Tool (CCT) v1.0
; Created in 2018 by José A. Rojo L.
;---------------------------------------------------------------------------------------------------------------------------

; MIT License

; Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
; files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
; modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
; Software is furnished to do so, subject to the following conditions:

; The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
; Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
; WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
; COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

; https://opensource.org/licenses/MIT

;---------------------------------------------------------------------------------------------------------------------------

format PE console

;---------------------------------------------------------------------------------------------------------------------------

include 'main.inc'

;---------------------------------------------------------------------------------------------------------------------------

;LOCALE_USER_DEFAULT                          = 1024
CALG_MD5                                      = 00008003h
CALG_SHA1                                     = 00008004h
CALG_SHA256                                   = 0000800Ch
CALG_SHA384                                   = 0000800Dh
CALG_SHA512                                   = 0000800Eh
CRYPT_VERIFYCONTEXT                           = $F0000000
PROV_RSA_AES                                  = 24
HP_HASHVAL                                    = 2
HP_HASHSIZE                                   = 4
CRYPT_STRING_BASE64                           = 1
CRYPT_STRING_NOCRLF                           = 40000000h
URLPOLICY_ALLOW                               = 0
URLPOLICY_DISALLOW                            = 3
OLECLOSE_NOSAVE                               = 1
S_OK                                          = 0
S_FALSE                                       = 1
INPLACE_E_NOTOOLSPACE                         = 800401A1h
E_UNEXPECTED                                  = 8000FFFFh
E_OUTOFMEMORY                                 = 8007000Eh
E_NOINTERFACE                                 = 80004002h
E_NOTIMPL                                     = 80004001h
E_INVALIDARG                                  = 80070057h
INET_E_DEFAULT_ACTION                         = 800C0011h
TYPE_E_ELEMENTNOTFOUND                        = 8002802Bh
DISP_E_UNKNOWNINTERFACE                       = 80020001h
DISP_E_MEMBERNOTFOUND                         = 80020003h
DISP_E_BADPARAMCOUNT                          = 8002000Eh
DISP_E_TYPEMISMATCH                           = 80020005h
DISP_E_BADINDEX                               = 8002000Bh
DISP_E_ARRAYISLOCKED                          = 8002000Dh
DISP_E_EXCEPTION                              = 80020009h
URLACTION_JAVA_PERMISSIONS                    = 00001C00h
URLACTION_DOWNLOAD_SIGNED_ACTIVEX             = 00001001h
URLACTION_DOWNLOAD_UNSIGNED_ACTIVEX           = 00001004h
URLACTION_ACTIVEX_RUN                         = 00001200h
URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY      = 00001201h
URLACTION_ACTIVEX_OVERRIDE_DATA_SAFETY        = 00001202h
URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY      = 00001203h
URLACTION_ACTIVEX_CONFIRM_NOOBJECTSAFETY      = 00001204h
URLACTION_ACTIVEX_NO_WEBOC_SCRIPT             = 00001206h
URLACTION_ACTIVEX_OVERRIDE_REPURPOSEDETECTION = 00001207h
URLACTION_ACTIVEX_OVERRIDE_OPTIN              = 00001208h
URLACTION_ACTIVEX_SCRIPTLET_RUN               = 00001209h
URLACTION_ACTIVEX_DYNSRC_VIDEO_AND_ANIMATION  = 0000120Ah
URLACTION_ACTIVEX_OVERRIDE_DOMAINLIST         = 0000120Bh
URLACTION_ACTIVEX_ALLOW_TDC                   = 0000120Ch
URLACTION_SCRIPT_JAVA_USE                     = 00001402h
URLACTION_SCRIPT_SAFE_ACTIVEX                 = 00001405h
URLACTION_SCRIPT_PASTE                        = 00001407h
URLACTION_HTML_JAVA_RUN                       = 00001605h
URLACTION_AUTOMATIC_ACTIVEX_UI                = 00002201h
SCRIPTITEM_ISVISIBLE                          = $2
SCRIPTITEM_NOCODE                             = $400
SCRIPTSTATE_UNINITIALIZED                     = 0
SCRIPTSTATE_CONNECTED                         = 2
SCRIPTSTATE_DISCONNECTED                      = 3
SCRIPTSTATE_CLOSED                            = 4
SCRIPTINFO_IUNKNOWN                           = 1
SCRIPTINFO_ITYPEINFO                          = 2
SCRIPTINFO_ALL_FLAGS                          = 3
OLEIVERB_INPLACEACTIVATE                      = -5
DISPID_TITLECHANGE                            = 113
DISPID_NAVIGATECOMPLETE2                      = 252
DISPID_DOCUMENTCOMPLETE                       = 259
DISPID_READYSTATECHANGE                       = -609
DISPID_PROGRESS                               = 1958
DISPID_FSCOMMAND                              = 150
DISPID_FLASHCALL                              = 197
CONTEXT_MENU_CONTROL                          = 2
ID_SHDOCLC_ACCEL                              = 42
ID_COPY_CMD                                   = 15
ID_CUT_CMD                                    = 16
ID_PASTE_CMD                                  = 26
ID_UNDO_CMD                                   = 43
ID_CLOSE_CMD                                  = 50
DOCHOSTUIDBLCLK_DEFAULT                       = 0
DOCHOSTUIFLAG_DIALOG                          = 1
DOCHOSTUIFLAG_DISABLE_HELP_MENU               = 2
DOCHOSTUIFLAG_NO3DBORDER                      = 4
DOCHOSTUIFLAG_SCROLL_NO                       = 8
DOCHOSTUIFLAG_DISABLE_SCRIPT_INACTIVE         = 16
DOCHOSTUIFLAG_OPENNEWWIN                      = 32
DOCHOSTUIFLAG_DISABLE_OFFSCREEN               = 64
DOCHOSTUIFLAG_FLAT_SCROLLBAR                  = 128
DOCHOSTUIFLAG_DIV_BLOCKDEFAULT                = 256
DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY         = 512
DOCHOSTUIDBLCLK_SHOWPROPERTIES                = 1
DOCHOSTUIDBLCLK_SHOWCODE                      = 2
SWP_FRAMECHANGED                              = 20h
LOCALE_SYSTEM_DEFAULT                         = 800h
BINDF_GETNEWESTVERSION                        = 10h
BINDF_IGNORESECURITYPROBLEM                   = 100h
VT_EMPTY                                      = 0
VT_I4                                         = 3
VT_BSTR                                       = 8
VT_DISPATCH                                   = 9
VT_BOOL                                       = 11
VARIANT_TRUE                                  = $FFFF
VARIANT_FALSE                                 = $0000
FOF_SILENT                                    = 0004h
FOF_NOCONFIRMATION                            = 0010h
FOF_NOERRORUI                                 = 0400h
FOF_NOCONFIRMMKDIR                            = 0200h
FOF_NO_UI                                     = FOF_SILENT or FOF_NOCONFIRMATION or FOF_NOERRORUI or FOF_NOCONFIRMMKDIR      ; supported since Windows Vista.
TH32CS_SNAPTHREAD                             = 00000004h
CLSCTX_INPROC_SERVER                          = 01h
VER_NT_WORKSTATION                            = 1
SHIFT_PRESSED                                 = 10h
KEY_EVENT                                     = 1
INFINITE                                      = -1
SEE_MASK_NOCLOSEPROCESS                       = 00000040h
CREATE_DEFAULT_ERROR_MODE                     = 04000000h
VER_SUITE_WH_SERVER                           = 00008000h
SM_TABLETPC                                   = 86
SM_MEDIACENTER                                = 87
SM_STARTER                                    = 88
SM_SERVERR2                                   = 89
COINIT_APARTMENTTHREADED                      = 02h
COINIT_DISABLE_OLE1DDE                        = 04h
ERROR_FILE_NOT_FOUND                          = 2
ERROR_PATH_NOT_FOUND                          = 3
ERROR_BAD_FORMAT                              = 0Bh
SE_ERR_ACCESSDENIED                           = 5
SE_ERR_ASSOCINCOMPLETE                        = 1Bh
SE_ERR_DDEBUSY                                = 1Eh
SE_ERR_DDEFAIL                                = 1Dh
SE_ERR_DDETIMEOUT                             = 1Ch
SE_ERR_DLLNOTFOUND                            = 20h
SE_ERR_NOASSOC                                = 1Fh
SE_ERR_OOM                                    = 8
SE_ERR_SHARE                                  = 1Ah
SEEK_END                                      = 2
LONG_MAX                                      = 2147483647
LONG_MIN                                      = -2147483647

;---------------------------------------------------------------------------------------------------------------------------

macro multi_icon group, [label, icon_file, num]
{
    common local count
    count = 0
    forward local data, size, position
       label dd RVA data, size, 0, 0
       virtual at 0
          file icon_file: 6 + (num * 16), 16
          load size dword from 8
          load position dword from 12
       end virtual
       data file icon_file: position, size
       count = count+1
    common local header
       align 4
       group dd RVA header, 6 + count * 14, 0, 0
       header dw 0,1,count
    forward
       file icon_file: 6 + (num * 16), 12
       dw label#.resid
    common
       align 4
}

;---------------------------------------------------------------------------------------------------------------------------

struc GUID def
{
    match d1-d2-d3-d4-d5, def
    \{
         .Data1 dd 0x\#d1
         .Data2 dw 0x\#d2
         .Data3 dw 0x\#d3
         .Data4 db 0x\#d4 shr 8,\
                   0x\#d4 and 0FFh
         .Data5 db 0x\#d5 shr 40,\
                   0x\#d5 shr 32 and 0FFh,\
                   0x\#d5 shr 24 and 0FFh,\
                   0x\#d5 shr 16 and 0FFh,\
                   0x\#d5 shr  8 and 0FFh,\
                   0x\#d5 and 0FFh
     \}
}

;---------------------------------------------------------------------------------------------------------------------------

macro RGB red, green, blue
{
    xor     eax, eax
    mov     al, blue
    rol     eax, 8
    mov     al, green
    rol     eax, 8
    mov     al, red
}

;---------------------------------------------------------------------------------------------------------------------------

struct VS_FIXEDFILEINFO
    dwSignature        dd ?
    dwStrucVersion     dd ?
    dwFileVersionMS    dd ?
    dwFileVersionLS    dd ?
    dwProductVersionMS dd ?
    dwProductVersionLS dd ?
    dwFileFlagsMask    dd ?
    dwFileFlags        dd ?
    dwFileOS           dd ?
    dwFileType         dd ?
    dwFileSubtype      dd ?
    dwFileDateMS       dd ?
    dwFileDateLS       dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct RTL_OSVERSIONINFOEXW
    dwOSVersionInfoSize dd ?
    dwMajorVersion      dd ?
    dwMinorVersion      dd ?
    dwBuildNumber       dd ?
    dwPlatformId        dd ?
    szCSDVersion        dw 128 dup (?)
    wServicePackMajor   dw ?
    wServicePackMinor   dw ?
    wSuiteMask          dw ?
    wProductType        db ?
    wReserved           db ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct KEY_EVENT_RECORD
    bKeyDown          dd ?
    wRepeatCount      dd ?
    wVirtualKeyCode   dw ?
    wVirtualScanCode  dw ?
    union
        UnicodeChar   dw ?
        AsciiChar     db ?
    ends
    dwControlKeyState dd ?
ends

struct INPUT_RECORD
    EventType dw ?
    KeyEvent  KEY_EVENT_RECORD
ends

;---------------------------------------------------------------------------------------------------------------------------

struct COORD
    X dw ?
    Y dw ? 
ends 

struct SMALL_RECT
    Left   dw ?
    Top    dw ?
    Right  dw ?
    Bottom dw ?
ends

struct CONSOLE_SCREEN_BUFFER_INFO 
    dwSize              COORD
    dwCursorPosition    COORD
    wAttributes         dw ?
    srWindow            SMALL_RECT
    dwMaximumWindowSize COORD
ends

;---------------------------------------------------------------------------------------------------------------------------

struct THREADENTRY32
    dwSize             dd ?
    cntUsage           dd ?
    th32ThreadID       dd ?
    th32OwnerProcessID dd ?
    tpBasePri          dd ?
    tpDeltaPri         dd ?
    dwFlags            dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct SHELLEXECUTEINFO
    cbSize       dd ?
    fMask        dd ?
    hwnd         dd ?
    lpVerb       dd ?
    lpFile       dd ?
    lpParameters dd ?
    lpDirectory  dd ?
    nShow        dd ?
    hInstApp     dd ?
    lpIDList     dd ?
    lpClass      dd ?
    hkeyClass    dd ?
    dwHotKey     dd ?
    union
       hIcon     dd ?
       hMonitor  dd ?
    ends
    hProcess     dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct SECURITY_ATTRIBUTES
    nLength              dd ?
    lpSecurityDescriptor dd ?
    bInheritHandle       dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct CWPSTRUCT
    lParam  dd ?
    wParam  dd ?
    message dd ?
    hwnd    dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct GDIP_STARTUP_INPUT
    GdiplusVersion           dd ?
    DebugEventCallback       dd ?
    SuppressBackgroundThread dd ?
    SuppressExternalCodecs   dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct WB_OBJ
    iUnknown          dd ?
    Base0             dd ?
    iOleClientSite    dd ?
    Base1             dd ?
    iOleInPlaceSite   dd ?
    Base2             dd ?
    iOleInPlaceFrame  dd ?
    Base3             dd ?
    iDocHostUIHandler dd ?
    Base4             dd ?
    iWebBrowserEvents dd ?
    Base5             dd ?
    iExternalDispatch dd ?
    Base6             dd ?
    iServiceProvider  dd ?
    Base7             dd ?
    iSecurityManager  dd ?
    Base8             dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct SCR_OBJ
    iActiveScriptSite       dd ?
    Base0                   dd ?
    iActiveScriptSiteWindow dd ?
    Base1                   dd ?
    iConsoleDispatch        dd ?
    Base2                   dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct SWF_OBJ
    iShockwaveFlashEvents   dd ?
    Base0                   dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct OLEINPLACEFRAMEINFO
    cb              dd ?
    fMDIApp         dd ?
    hwndFrame       dd ?
    haccel          dd ?
    cAccelEntries   dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct DISPPARAMS
    rgvarg            dd ?
    rgdispidNamedArgs dd ?
    cArgs             dd ?
    cNamedArgs        dd ?
ends

struct CY
    union
        struct
            Lo    dd ?
            Hi    dd ?
        ends
        int64     dq ?
    ends
ends

struct DECIMAL
    wReserved     dw ?
    union
        struct
            scale db ?
            sign  db ?
        ends
        signscale dw ?
    ends
    Hi32          dd ?
    union
        struct
            Lo32  dd ?
            Mid32 dd ?
        ends
        Lo64      dq ?
    ends
ends

struct VARIANT
    union
        struct
            vt               dw ?
            wReserved1       dw ?
            wReserved2       dw ?
            wReserved3       dw ?
            union
                llVal        dq ?
                lVal         dd ?
                bVal         db ?
                iVal         dw ?
                fltVal       dd ?
                dblVal       dq ?
                boolVal      dw ?
                bool         dw ?
                scode        dd ?
                cyVal        CY
                date         dq ?
                bstrVal      dd ?
                punkVal      dd ?
                pdispVal     dd ?
                parray       dd ?
                pbVal        dd ?
                piVal        dd ?
                plVal        dd ?
                pllVal       dd ?
                pfltVal      dd ?
                pdblVal      dd ?
                pboolVal     dd ?
                pbool        dd ?
                pscode       dd ?
                pcyVal       dd ?
                pdate        dd ?
                pbstrVal     dd ?
                ppunkVal     dd ?
                ppdispVal    dd ?
                pparray      dd ?
                pvarVal      dd ?
                byref        dd ?
                cVal         db ?
                uiVal        dw ?
                ulVal        dd ?
                ullVal       dq ?
                intVal       dd ?
                uintVal      dd ?
                pdecVal      dd ?
                pcVal        dd ?
                puiVal       dd ?
                pulVal       dd ?
                pullVal      dd ?
                pintVal      dd ?
                puintVal     dd ?
                struct
                    pvRecord dd ?
                    pRecInfo dd ?
                ends
            ends
        ends
        decVal            DECIMAL
    ends
ends

;---------------------------------------------------------------------------------------------------------------------------

struct DOCHOSTUIINFO
    cbSize         dd ?
    dwFlags        dd ?
    dwDoubleClick  dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

struct EXCEPINFO
    wCode             dw ?
    wReserved         dw ?
    bstrSource        dd ?
    bstrDescription   dd ?
    bstrHelpFile      dd ?
    dwHelpContext     dd ?
    pvReserved        dd ?
    pfnDeferredFillIn dd ?
    scode             dd ?
ends

;---------------------------------------------------------------------------------------------------------------------------

interface IUnknown,\
           QueryInterface,\
           AddRef,\
           Release

interface IDispatch,\
           QueryInterface,\
           AddRef,\ 
           Release,\ 
           GetTypeInfoCount,\ 
           GetTypeInfo,\ 
           GetIDsOfNames,\ 
           Invoke

interface IActiveScript,\
           QueryInterface,\
           AddRef,\
           Release,\
           SetScriptSite,\
           GetScriptSite,\
           SetScriptState,\
           GetScriptState,\
           Close,\
           AddNamedItem,\
           AddTypeLib,\
           GetScriptDispatch,\
           GetCurrentScriptThreadID,\
           GetScriptThreadID,\
           GetScriptThreadState,\
           InterruptScriptThread,\
           Clone

interface IActiveScriptParse,\
           QueryInterface,\
           AddRef,\
           Release,\
           InitNew,\
           AddScriptlet,\
           ParseScriptText

interface IActiveScriptError,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetExceptionInfo,\
           GetSourcePosition,\
           GetSourceLineText

interface IScriptEncoder,\
           QueryInterface,\
           AddRef,\ 
           Release,\ 
           GetTypeInfoCount,\ 
           GetTypeInfo,\ 
           GetIDsOfNames,\ 
           Invoke,\
           EncodeScriptFile

interface IOleWindow,\
           QueryInterface,\
           AddRef,\ 
           Release,\
           GetWindow,\
           ContextSensitiveHelp

interface IOleObject,\
           QueryInterface,\
           AddRef,\ 
           Release,\
           SetClientSite,\
           GetClientSite,\
           SetHostNames,\
           Close,\
           SetMoniker,\
           GetMoniker,\
           InitFromData,\
           GetClipboardData,\
           DoVerb,\
           EnumVerbs,\
           Update,\
           IsUpToDate,\
           GetUserClassID,\
           GetUserType,\
           SetExtent,\
           GetExtent,\
           Advise,\
           Unadvise,\
           EnumAdvise,\
           GetMiscStatus,\
           SetColorScheme

interface IWebBrowser2,\
           QueryInterface,\ 
           AddRef,\ 
           Release,\ 
           GetTypeInfoCount,\ 
           GetTypeInfo,\ 
           GetIDsOfNames,\ 
           Invoke,\ 
           GoBack,\ 
           GoForward,\ 
           GoHome,\ 
           GoSearch,\ 
           Navigate,\ 
           Refresh,\ 
           Refresh2,\ 
           Stop,\ 
           get_Application,\ 
           get_Parent,\ 
           get_Container,\ 
           get_Document,\ 
           get_TopLevelContainer,\ 
           get_Type,\ 
           get_Left,\ 
           put_Left,\ 
           get_Top,\ 
           put_Top,\ 
           get_Width,\ 
           put_Width,\ 
           get_Height,\ 
           put_Height,\ 
           get_LocationName,\ 
           get_LocationURL,\ 
           get_Busy,\ 
           Quit,\ 
           ClientToWindow,\ 
           PutProperty,\ 
           GetProperty,\ 
           get_Name,\ 
           get_HWND,\ 
           get_FullName,\ 
           get_Path,\ 
           get_Visible,\ 
           put_Visible,\ 
           get_StatusBar,\ 
           put_StatusBar,\ 
           get_StatusText,\ 
           put_StatusText,\ 
           get_ToolBar,\ 
           put_ToolBar,\ 
           get_MenuBar,\ 
           put_MenuBar,\ 
           get_FullScreen,\ 
           put_FullScreen,\ 
           Navigate2,\ 
           QueryStatusWB,\ 
           ExecWB,\ 
           ShowBrowserBar,\ 
           get_ReadyState,\ 
           get_Offline,\ 
           put_Offline,\ 
           get_Silent,\ 
           put_Silent,\ 
           get_RegisterAsBrowser,\ 
           put_RegisterAsBrowser,\ 
           get_RegisterAsDropTarget,\ 
           put_RegisterAsDropTarget,\ 
           get_TheaterMode,\ 
           put_TheaterMode,\ 
           get_AddressBar,\ 
           put_AddressBar,\ 
           get_Resizable,\ 
           put_Resizable

interface IConnectionPointContainer,\
           QueryInterface,\
           AddRef,\
           Release,\
           EnumConnectionPoints,\
           FindConnectionPoint

interface IConnectionPoint,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetConnectionInterface,\
           GetConnectionPointContainer,\
           Advise,\
           Unadvise

interface IHTMLDocument2,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Script,\
           get_all,\
           get_body,\
           get_activeElement,\
           get_images,\
           get_applets,\
           get_links,\
           get_forms,\
           get_anchors,\
           put_title,\
           get_title,\
           get_scripts,\
           put_designMode,\
           get_designMode,\
           get_selection,\
           get_readyState,\
           get_frames,\
           get_embeds,\
           get_plugins,\
           put_alinkColor,\
           get_alinkColor,\
           put_bgColor,\
           get_bgColor,\
           put_fgColor,\
           get_fgColor,\
           put_linkColor,\
           get_linkColor,\
           put_vlinkColor,\
           get_vlinkColor,\
           get_referrer,\
           get_location,\
           get_lastModified,\
           put_URL,\
           get_URL,\
           put_domain,\
           get_domain,\
           put_cookie,\
           get_cookie,\
           put_expands,\
           get_expands,\
           put_charset,\
           get_charset,\
           put_defaultCharset,\
           get_defaultCharset,\
           get_mimeType,\
           get_fileSize,\
           get_fileCreatedDate,\
           get_fileModifiedDate,\
           get_fileUpdatedDate,\
           get_security,\
           get_protocol,\
           get_nameProp,\
           write,\
           writeln,\
           open,\
           close,\
           clear,\
           queryCommandSupported,\
           queryCommandEnabled,\
           queryCommandState,\
           queryCommandIndeterm,\
           queryCommandText,\
           queryCommandValue,\
           execCommand,\
           execCommandShowHelp,\
           createElement,\
           put_onhelp,\
           get_onhelp,\
           put_onclick,\
           get_onclick,\
           put_ondblclick,\
           get_ondblclick,\
           put_onkeyup,\
           get_onkeyup,\
           put_onkeydown,\
           get_onkeydown,\
           put_onkeypress,\
           get_onkeypress,\
           put_onmouseup,\
           get_onmouseup,\
           put_onmousedown,\
           get_onmousedown,\
           put_onmousemove,\
           get_onmousemove,\
           put_onmouseout,\
           get_onmouseout,\
           put_onmouseover,\
           get_onmouseover,\
           put_onreadystatechange,\
           get_onreadystatechange,\
           put_onafterupdate,\
           get_onafterupdate,\
           put_onrowexit,\
           get_onrowexit,\
           put_onrowenter,\
           get_onrowenter,\
           put_ondragstart,\
           get_ondragstart,\
           put_onselectstart,\
           get_onselectstart,\
           elementFromPoint,\
           get_parentWindow,\
           get_styleSheets,\
           put_onbeforeupdate,\
           get_onbeforeupdate,\
           put_onerrorupdate,\
           get_onerrorupdate,\
           toString,\
           createStyleSheet

interface IHTMLElementCollection,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           toString,\
           put_length,\
           get_length,\
           get__newEnum,\
           item,\
           tags

interface IHTMLLinkElement,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           put_href,\
           get_href,\
           put_rel,\
           get_rel,\
           put_rev,\
           get_rev,\
           put_type,\
           get_type,\
           get_readyState,\
           put_onreadystatechange,\
           get_onreadystatechange,\
           put_onload,\
           get_onload,\
           put_onerror,\
           get_onerror,\
           get_styleSheet,\
           put_disabled,\
           get_disabled,\
           put_media,\
           get_media

interface IHTMLElement,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           setAttribute,\
           getAttribute,\
           removeAttribute,\
           put_className,\
           get_className,\
           put_id,\
           get_id,\
           get_tagName,\
           get_parentElement,\
           get_style,\
           put_onhelp,\
           get_onhelp,\
           put_onclick,\
           get_onclick,\
           put_ondblclick,\
           get_ondblclick,\
           put_onkeydown,\
           get_onkeydown,\
           put_onkeyup,\
           get_onkeyup,\
           put_onkeypress,\
           get_onkeypress,\
           put_onmouseout,\
           get_onmouseout,\
           put_onmouseover,\
           get_onmouseover,\
           put_onmousemove,\
           get_onmousemove,\
           put_onmousedown,\
           get_onmousedown,\
           put_onmouseup,\
           get_onmouseup,\
           get_document,\
           put_title,\
           get_title,\
           put_language,\
           get_language,\
           put_onselectstart,\
           get_onselectstart,\
           scrollIntoView,\
           contains,\
           get_sourceIndex,\
           get_recordNumber,\
           put_lang,\
           get_lang,\
           get_offsetLeft,\
           get_offsetTop,\
           get_offsetWidth,\
           get_offsetHeight,\
           get_offsetParent,\
           put_innerHTML,\
           get_innerHTML,\
           put_innerText,\
           get_innerText,\
           put_outerHTML,\
           get_outerHTML,\
           put_outerText,\
           get_outerText,\
           insertAdjacentHTML,\
           insertAdjacentText,\
           get_parentTextEdit,\
           get_isTextEdit,\
           click,\
           get_filters,\
           put_ondragstart,\
           get_ondragstart,\
           toString,\
           put_onbeforeupdate,\
           get_onbeforeupdate,\
           put_onafterupdate,\
           get_onafterupdate,\
           put_onerrorupdate,\
           get_onerrorupdate,\
           put_onrowexit,\
           get_onrowexit,\
           put_onrowenter,\
           get_onrowenter,\
           put_ondatasetchanged,\
           get_ondatasetchanged,\
           put_ondataavailable,\
           get_ondataavailable,\
           put_ondatasetcomplete,\
           get_ondatasetcomplete,\
           put_onfilterchange,\
           get_onfilterchange,\
           get_children,\
           get_all

interface ICustomDoc,\
           QueryInterface,\
           AddRef,\
           Release,\
           SetUIHandler

interface IHTMLWindow2,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           item,\
           get_length,\
           get_frames,\
           put_defaultStatus,\
           get_defaultStatus,\
           put_status,\
           get_status,\
           setTimeout,\
           clearTimeout,\
           alert,\
           confirm,\
           prompt,\
           get_Image,\
           get_location,\
           get_history,\
           close,\
           put_opener,\
           get_opener,\
           get_navigator,\
           put_name,\
           get_name,\
           get_parent,\
           open,\
           get_self,\
           get_top,\
           get_window,\
           navigate,\
           put_onfocus,\
           get_onfocus,\
           put_onblur,\
           get_onblur,\
           put_onload,\
           get_onload,\
           put_onbeforeunload,\
           get_onbeforeunload,\
           put_onunload,\
           get_onunload,\
           put_onhelp,\
           get_onhelp,\
           put_onerror,\
           get_onerror,\
           put_onresize,\
           get_onresize,\
           put_onscroll,\
           get_onscroll,\
           get_document,\
           get_event,\
           get__newEnum,\
           showModalDialog,\
           showHelp,\
           get_screen,\
           get_Option,\
           focus,\
           get_closed,\
           blur,\
           scroll,\
           get_clientInformation,\
           setInterval,\
           clearInterval,\
           put_offscreenBuffering,\
           get_offscreenBuffering,\
           execScript,\
           toString,\
           scrollBy,\
           scrollTo,\
           moveTo,\
           moveBy,\
           resizeTo,\
           resizeBy,\
           get_external

interface IRegExp,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Pattern,\
           put_Pattern,\
           get_IgnoreCase,\
           put_IgnoreCase,\
           get_Global,\
           put_Global,\
           Execute,\
           Test,\
           Replace

interface IShellDispatch,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Application,\
           get_Parent,\
           NameSpace,\
           BrowseForFolder,\
           Windows,\
           Open,\
           Explore,\
           MinimizeAll,\
           UndoMinimizeALL,\
           FileRun,\
           CascadeWindows,\
           TileVertically,\
           TileHorizontally,\
           ShutdownWindows,\
           Suspend,\
           EjectPC,\
           SetTime,\
           TrayProperties,\
           Help,\
           FindFiles,\
           FindComputer,\
           RefreshMenu,\
           ControlPanelItem

interface IFolder,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Title,\
           get_Application,\
           get_Parent,\
           get_ParentFolder,\
           Items,\
           ParseName,\
           NewFolder,\
           MoveHere,\
           CopyHere,\
           GetDetailsOf

interface IFolderItems,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Count,\
           get_Application,\
           get_Parent,\
           Item,\
           _NewEnum

interface IFolderItem,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_Application,\
           get_Parent,\
           get_Name,\
           put_Name,\
           get_Path,\
           get_GetLink,\
           get_GetFolder,\
           get_IsLink,\
           get_IsFolder,\
           get_IsFileSystem,\
           get_IsBrowsable,\
           get_ModifyDate,\
           put_ModifyDate,\
           get_Size,\
           get_Type,\
           Verbs,\
           InvokeVerb

interface IShockwaveFlash,\
           QueryInterface,\
           AddRef,\
           Release,\
           GetTypeInfoCount,\
           GetTypeInfo,\
           GetIDsOfNames,\
           Invoke,\
           get_ReadyState,\
           get_TotalFrames,\
           get_Playing,\
           put_Playing,\
           get_Quality,\
           put_Quality,\
           get_ScaleMode,\
           put_ScaleMode,\
           get_AlignMode,\
           put_AlignMode,\
           get_BackgroundColor,\
           put_BackgroundColor,\
           get_Loop,\
           put_Loop,\
           get_Movie,\
           put_Movie,\
           get_FrameNum,\
           put_FrameNum,\
           SetZoomRect,\
           Zoom,\
           Pan,\
           Play,\
           Stop,\
           Back,\
           Forward,\
           Rewind,\
           StopPlay,\
           GotoFrame,\
           CurrentFrame,\
           IsPlaying,\
           PercentLoaded,\
           FrameLoaded,\
           FlashVersion,\
           get_WMode,\
           put_WMode,\
           get_SAlign,\
           put_SAlign,\
           get_Menu,\
           put_Menu,\
           get_Base,\
           put_Base,\
           get_Scale,\
           put_Scale,\
           get_DeviceFont,\
           put_DeviceFont,\
           get_EmbedMovie,\
           put_EmbedMovie,\
           get_BGColor,\
           put_BGColor,\
           get_Quality2,\
           put_Quality2,\
           LoadMovie,\
           TGotoFrame,\
           TGotoLabel,\
           TCurrentFrame,\
           TCurrentLabel,\
           TPlay,\
           TStopPlay,\
           SetVariable,\
           GetVariable,\
           TSetProperty,\
           TGetProperty,\
           TCallFrame,\
           TCallLabel,\
           TSetPropertyNum,\
           TGetPropertyNum,\
           TGetPropertyAsNumber,\
           get_SWRemote,\
           put_SWRemote,\
           get_FlashVars,\
           put_FlashVars,\
           get_AllowScriptAccess,\
           put_AllowScriptAccess,\
           get_MovieData,\
           put_MovieData,\
           get_InlineData,\
           put_InlineData,\
           get_SeamlessTabbing,\
           put_SeamlessTabbing,\
           EnforceLocalSecurity,\
           get_Profile,\
           put_Profile,\
           get_ProfileAddress,\
           put_ProfileAddress,\
           get_ProfilePort,\
           put_ProfilePort,\
           CallFunction,\
           SetReturnValue,\
           DisableLocalSecurity,\
           get_AllowNetworking,\
           put_AllowNetworking,\
           get_AllowFullScreen,\
           put_AllowFullScreen,\
           get_AllowFullScreenInteractive,\
           put_AllowFullScreenInteractive,\
           get_IsDependent,\
           put_IsDependent,\
           get_BrowserZoom,\
           put_BrowserZoom

interface ISpVoice,\
           QueryInterface,\
           AddRef,\
           Release,\
           SetNotifySink,\
           SetNotifyWindowMessage,\
           SetNotifyCallbackFunction,\
           SetNotifyCallbackInterface,\
           SetNotifyWin32Event,\
           WaitForNotifyEvent,\
           GetNotifyEventHandle,\
           SetInterest,\
           GetEvents,\
           GetInfo,\
           SetOutput,\
           GetOutputObjectToken,\
           GetOutputStream,\
           Pause,\
           Resume,\
           SetVoice,\
           GetVoice,\
           Speak,\
           SpeakStream,\
           GetStatus,\
           Skip,\
           SetPriority,\
           GetPriority,\
           SetAlertBoundary,\
           GetAlertBoundary,\
           SetRate,\
           GetRate,\
           SetVolume,\
           GetVolume,\
           WaitUntilDone,\
           SetSyncSpeakTimeout,\
           GetSyncSpeakTimeout,\
           SpeakCompleteEvent,\
           IsUISupported,\
           DisplayUI

;---------------------------------------------------------------------------------------------------------------------------

.code
    @start:
             cinvoke __getmainargs, argc, argv, env, 0
             cmp     [argc], 1
             je      error

             invoke  GetStdHandle, STD_OUTPUT_HANDLE
             cmp     eax, INVALID_HANDLE_VALUE
             je      error

             mov     [stdo], eax
             invoke  GetStdHandle, STD_INPUT_HANDLE
             cmp     eax, INVALID_HANDLE_VALUE
             je      error

             mov     [stdi], eax
             invoke  RtlZeroMemory,\
                     pinf,\
                     sizeof.PROCESS_INFORMATION

             invoke  RtlZeroMemory,\
                     csbi,\
                     sizeof.CONSOLE_SCREEN_BUFFER_INFO

             invoke  GetConsoleScreenBufferInfo, [stdo], csbi
             test    eax, eax                                                                                                ; the std redirect checker!
             jnz     nored

             mov     [bsrm], 1
             mov     [csbi.srWindow.Bottom], 24
             mov     [csbi.srWindow.Top], 0
             mov     [csbi.dwSize.Y], 300
             mov     [csbi.dwSize.X], 80
             mov     [csbi.wAttributes], 7

    nored:
             xor     eax, eax
             xor     ebx, ebx
             mov     ax, [csbi.srWindow.Bottom]
             mov     bx, [csbi.srWindow.Top]
             sub     eax, ebx
             dec     eax
             mov     [rows], eax
             xor     eax, eax
             xor     ebx, ebx
             mov     ax, [csbi.dwSize.Y]
             mov     bx, [csbi.dwSize.X]
             dec     eax
             mov     [rowd], eax
             inc     eax
             mul     ebx
             mov     [size], eax
             cinvoke malloc, eax
             test    eax, eax
             jz      error

             mov     [buff], eax
             invoke  RtlZeroMemory, eax, [size]
             xor     ecx, ecx
             mov     cx, [csbi.wAttributes]
             mov     [clx], ecx
             invoke  RtlZeroMemory, cwr, sizeof.RECT
             invoke  RtlZeroMemory, bin, sizeof.BROWSEINFO
             invoke  RtlZeroMemory, ofn, sizeof.OPENFILENAME
             mov     [ofn.lStructSize], sizeof.OPENFILENAME
             mov     [ofn.Flags], OFN_PATHMUSTEXIST
             invoke  GetConsoleWindow
             mov     [ofn.hwndOwner], eax
             mov     [bin.hwndOwner], eax
             invoke  GetWindowRect, eax, cwr
             invoke  GetModuleHandle, 0
             mov     [ofn.hInstance], eax
             mov     eax, [buff]
             mov     [ofn.nMaxFile], MAX_PATH
             mov     [ofn.lpstrFile], eax
             mov     [bin.pszDisplayName], eax
             mov     esi, [argv]
             mov     [appn], esi

             mov     [aux], 1
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      exit

             add     esi, 4

    cmdln:
             invoke  lstrcmpi, dword [esi], '--help'
             test    eax, eax
             jnz     @f

    hprn:
             mov     eax, [appn]
             invoke  lstrcpy, smbf, dword [eax]
             invoke  PathFindExtension, smbf
             invoke  lstrcmp, eax, exe
             jz      gfvis

             invoke  lstrcat, smbf, exe

    gfvis:
             invoke  GetFileVersionInfoSize, smbf, lpt
             test    eax, eax
             jz      error

             mov     [cnt], eax
             cmp     eax, [size]
             jl      gfvi

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jz      error

             mov     [buff], eax

   gfvi:
             invoke  GetFileVersionInfo, smbf, [lpt], [cnt], [buff]
             test    eax, eax
             jz      error

             mov     [aux], 0
             invoke  VerQueryValue, [buff], '\', tmp, aux
             test    eax, eax
             jz      error

             mov     eax, [aux]
             test    eax, eax
             jz      error

             mov     eax, [tmp]
             mov     ebx, [eax + VS_FIXEDFILEINFO.dwSignature]
             cmp     ebx, $FEEF04BD
             jne     error

             mov     ebx, [eax + VS_FIXEDFILEINFO.dwFileVersionMS]
             shr     ebx, 16
             and     ebx, $FFFF

             mov     ecx, [eax + VS_FIXEDFILEINFO.dwFileVersionMS]
             and     ecx, $FFFF

             mov     edx, [eax + VS_FIXEDFILEINFO.dwFileVersionLS]
             shr     edx, 16
             and     edx, $FFFF

             mov     eax, [eax + VS_FIXEDFILEINFO.dwFileVersionLS]
             and     eax, $FFFF

             cinvoke sprintf, [buff], help, ebx, ecx, edx, eax
             mov     edi, [buff]
             jmp     bofcl

    @@:
             invoke  lstrcmpi, dword [esi], '-h'
             test    eax, eax
             jz      hprn

             invoke  lstrcmp, dword [esi], '/?'
             test    eax, eax
             jz      hprn

             invoke  lstrcmpi, dword [esi], '--modeless'
             test    eax, eax
             jnz     @f

             mov     [ofn.hwndOwner], 0
             mov     [bin.hwndOwner], 0
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--topmost'
             test    eax, eax
             jnz     @f

    topmost:
             mov     [tmp], 0
             invoke  FindWindow, clsn, 0
             test    eax, eax
             jz      nowbw

             mov     [ofn.hwndOwner], eax
             mov     [bin.hwndOwner], eax
             invoke  GetProp, eax, szow
             mov     [wndp], eax
             mov     [tmp], 1

    nowbw:
             invoke  FindWindow, swcn, 0
             test    eax, eax
             jnz     swfw

             cmp     [tmp], 1
             je      endloop

             mov     [bmod], 0
             jmp     endloop

    swfw:
             mov     [aux], eax
             invoke  GetProp, eax, szow
             cmp     eax, [wndp]
             jl      endloop

             mov     [wndp], eax
             mov     eax, [aux]
             mov     [ofn.hwndOwner], eax
             mov     [bin.hwndOwner], eax
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--modal'
             test    eax, eax
             jnz     @f

             mov     [bmod], 1
             jmp     topmost

    @@:
             invoke  lstrcmpi, dword [esi], '--random'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      defseed

             add     esi, 4
             cmp     byte [esi], 0
             jnz     firstn

    mxerr:
             mov     eax, LONG_MAX
             jmp     xret

    firstn:
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      xret

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rnd

             push    eax
             add     esi, 4
             cmp     byte [esi], 0
             jnz     lastn

    bxerr:
             mov     eax, LONG_MAX
             jmp     bxret

    lastn:
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      bxret

             push    eax
             jmp     range

    defseed:
             cinvoke time, 0

    rnd:
             cinvoke srand, eax
             cinvoke rand
             cdq
             jmp     xret

    range:
             cinvoke time, 0
             cinvoke srand, eax
             cinvoke rand
             cdq
             pop     ebx
             pop     ecx
             sub     ebx, ecx
             inc     ebx
             xor     edx, edx
             idiv    ebx
             add     edx, ecx
             mov     eax, edx
             jmp     xret

    bxret:
             pop     ebx
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--imath'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      mxerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      mxerr

             mov     eax, dword [esi]
             mov     [tmp], eax
             xor     ebx, ebx

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      mxerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      mxerr

             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      xret

             push    eax
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      bxerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      bxerr

             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      bxret

             push    eax
             invoke  lstrcmpi, [tmp], ssum
             test    eax, eax
             jnz     calcsub

             pop     ebx
             pop     eax
             add     eax, ebx
             jmp     xret

    calcsub:
             invoke  lstrcmpi, [tmp], ssub
             test    eax, eax
             jnz     calcmul

             pop     ebx
             pop     eax
             sub     eax, ebx
             jmp     xret

    calcmul:
             invoke  lstrcmpi, [tmp], smul
             test    eax, eax
             jnz     calcdiv

             pop     ebx
             pop     eax
             imul    ebx
             jmp     xret

    calcdiv:
             invoke  lstrcmpi, [tmp], sdiv
             test    eax, eax
             jnz     calcmod

             pop     ebx
             pop     eax

             cmp     ebx, 0
             je      xerr

             cmp     eax, 0
             je      xerr

             xor     edx, edx
             idiv    ebx
             jmp     xret

    calcmod:
             invoke  lstrcmpi, [tmp], smod
             test    eax, eax
             jnz     min

             pop     ebx
             pop     eax
             xor     edx, edx
             idiv    ebx
             mov     eax, edx
             jmp     xret

    min:
             invoke  lstrcmpi, [tmp], smin
             test    eax, eax
             jnz     max

             pop     ebx
             pop     eax
             cmp     ebx, eax
             jg      xret

             mov     eax, ebx
             jmp     xret

    max:
             invoke  lstrcmpi, [tmp], smax
             test    eax, eax
             jnz     mor

             pop     ebx
             pop     eax
             cmp     ebx, eax
             jl      xret

             mov     eax, ebx
             jmp     xret

    mor:
             invoke  lstrcmpi, [tmp], '/or'
             test    eax, eax
             jnz     mxor

             pop     ebx
             pop     eax
             or      eax, ebx
             jmp     xret

    mxor:
             invoke  lstrcmpi, [tmp], '/xor'
             test    eax, eax
             jnz     mnot

             pop     ebx
             pop     eax
             xor     eax, ebx
             jmp     xret

    mnot:
             invoke  lstrcmpi, [tmp], '/not'
             test    eax, eax
             jnz     mand

             pop     eax
             pop     ebx
             not     eax
             and     eax, ebx
             jmp     xret

    mand:
             invoke  lstrcmpi, [tmp], '/and'
             test    eax, eax
             jnz     mxxerr

             pop     ebx
             pop     eax
             and     eax, ebx
             jnz     nand

             mov     eax, FALSE
             jmp     xret

    nand:
             mov     eax, TRUE
             jmp     xret

    mxxerr:
             pop     eax
             pop     eax
             jmp     mxerr

    @@:
             invoke  lstrcmpi, dword [esi], '--fmath'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             mov     [xtr], szfa
             add     esi, 4
             invoke  lstrcmpi, dword [esi], sfmt
             test    eax, eax
             jnz     mop

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      xerr

             mov     eax, dword [esi]
             mov     [xtr], eax
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4

    mop:
             mov     eax, dword [esi]
             mov     [tmp], eax
             xor     ebx, ebx

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      xerr

             stdcall s2f, dword [esi], 2
             fstp    qword [dbla]

             invoke  lstrcmpi, [tmp], '/sqrt'
             test    eax, eax
             jnz     mexp

             cinvoke sqrt, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mexp:
             invoke  lstrcmpi, [tmp], '/exp'
             test    eax, eax
             jnz     msin

             cinvoke exp, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    msin:
             invoke  lstrcmpi, [tmp], '/sin'
             test    eax, eax
             jnz     msinh

             cinvoke sin, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    msinh:
             invoke  lstrcmpi, [tmp], '/sinh'
             test    eax, eax
             jnz     mcos

             cinvoke sinh, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mcos:
             invoke  lstrcmpi, [tmp], '/cos'
             test    eax, eax
             jnz     mcosh

             cinvoke cos, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mcosh:
             invoke  lstrcmpi, [tmp], '/cosh'
             test    eax, eax
             jnz     mtan

             cinvoke cosh, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mtan:
             invoke  lstrcmpi, [tmp], '/tan'
             test    eax, eax
             jnz     mtanh

             cinvoke tan, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mtanh:
             invoke  lstrcmpi, [tmp], '/tanh'
             test    eax, eax
             jnz     mlog

             cinvoke tanh, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mlog:
             invoke  lstrcmpi, [tmp], '/log'
             test    eax, eax
             jnz     mlog10

             cinvoke log, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mlog10:
             invoke  lstrcmpi, [tmp], '/log10'
             test    eax, eax
             jnz     mfloor

             cinvoke log10, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mfloor:
             invoke  lstrcmpi, [tmp], '/floor'
             test    eax, eax
             jnz     mceil

             mov     [xtr], szfb
             cinvoke floor, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    mceil:
             invoke  lstrcmpi, [tmp], '/ceil'
             test    eax, eax
             jnz     dblc

             mov     [xtr], szfb
             cinvoke ceil, dword [dbla], dword [dbla + 4]
             fstp    qword [dbla]
             jmp     fprn

    dblc:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             cmp     byte [esi], 0
             jz      xerr

             stdcall s2f, dword [esi], 2
             fstp    qword [dblb]

             invoke  lstrcmpi, [tmp], smod
             test    eax, eax
             jnz     mpow

             cinvoke fmod,\
                     dword [dbla],\
                     dword [dbla + 4],\
                     dword [dblb],\
                     dword [dblb + 4]

             fstp    qword [dbla]
             jmp     fprn

    mpow:
             invoke  lstrcmpi, [tmp], '/pow'
             test    eax, eax
             jnz     mfdiv

             cinvoke pow,\
                     dword [dbla],\
                     dword [dbla + 4],\
                     dword [dblb],\
                     dword [dblb + 4]

             fstp    qword [dbla]
             jmp     fprn


    mfdiv:
             invoke  lstrcmpi, [tmp], sdiv
             test    eax, eax
             jnz     mfmul

             fld     qword [dblb]
             fld     qword [dbla]
             fdiv    st0, st1
             fstp    qword [dbla]
             jmp     fprn

    mfmul:
             invoke  lstrcmpi, [tmp], smul
             test    eax, eax
             jnz     mfadd

             fld     qword [dblb]
             fld     qword [dbla]
             fmul    st0, st1
             fstp    qword [dbla]
             jmp     fprn

    mfadd:
             invoke  lstrcmpi, [tmp], ssum
             test    eax, eax
             jnz     mfsub

             fld     qword [dblb]
             fld     qword [dbla]
             fadd    st0, st1
             fstp    qword [dbla]
             jmp     fprn

    mfsub:
             invoke  lstrcmpi, [tmp], ssub
             test    eax, eax
             jnz     mfmin

             fld     qword [dblb]
             fld     qword [dbla]
             fsub    st0, st1
             fstp    qword [dbla]
             jmp     fprn

    mfmin:
             invoke  lstrcmpi, [tmp], smin
             test    eax, eax
             jnz     mfmax

             movsd   xmm0, qword [dbla]
             movsd   xmm1, qword [dblb]
             comisd  xmm0, xmm1
             jbe     fprn

             movsd   qword [dbla], xmm1
             jmp     fprn

    mfmax:
             invoke  lstrcmpi, [tmp], smax
             test    eax, eax
             jnz     xerr

             movsd   xmm0, qword [dbla]
             movsd   xmm1, qword [dblb]
             comisd  xmm1, xmm0
             jbe     fprn

             movsd   qword [dbla], xmm1

    fprn:
             cinvoke printf, [xtr], dword [dbla], dword [dbla + 4]
             jmp     exit


    @@:
             invoke  lstrcmpi, dword [esi], '--os-info'
             test    eax, eax
             jnz     @f

             invoke  RtlZeroMemory,\
                     ovi,\
                     sizeof.RTL_OSVERSIONINFOEXW
             mov     [ovi.dwOSVersionInfoSize], sizeof.RTL_OSVERSIONINFOEXW
             invoke  RtlGetVersion, ovi

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      defosv

             add     esi, 4
             invoke  lstrcmpi, dword [esi], smaj
             test    eax, eax
             jnz     minor

             mov     eax, [ovi.dwMajorVersion]
             jmp     xret

    minor:
             invoke  lstrcmpi, dword [esi], smnr
             test    eax, eax
             jnz     build

             mov     eax, [ovi.dwMinorVersion]
             jmp     xret

    build:
             invoke  lstrcmpi, dword [esi], '/build'
             test    eax, eax
             jnz     pltfrm

             mov     eax, [ovi.dwBuildNumber]
             jmp     xret

    pltfrm:
             invoke  lstrcmpi, dword [esi], '/platform'
             test    eax, eax
             jnz     wptype

             mov     eax, [ovi.dwPlatformId]
             jmp     xret

    wptype:
             invoke  lstrcmpi, dword [esi], styp
             test    eax, eax
             jnz     suite

             xor     eax, eax
             mov     al, [ovi.wProductType]
             jmp     xret

    suite:
             invoke  lstrcmpi, dword [esi], '/suite'
             test    eax, eax
             jnz     wvsp

             xor     eax, eax
             mov     ax, [ovi.wSuiteMask]
             jmp     xret

    wvsp:
             invoke  lstrcmpi, dword [esi], '/sp'
             test    eax, eax
             jnz     xerr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], smaj
             test    eax, eax
             jnz     spminor

             xor     eax, eax
             mov     ax, [ovi.wServicePackMajor]
             jmp     xret

    spminor:
             invoke  lstrcmpi, dword [esi], smnr
             test    eax, eax
             jnz     xerr

             xor     eax, eax
             mov     ax, [ovi.wServicePackMinor]
             jmp     xret

    defosv:
             invoke  lstrcpy, [buff], 'Windows'

             cmp     [ovi.dwMajorVersion], 11
             jl      w10

    lastv:
             invoke  lstrcat, [buff], ' (Last version)'
             jmp     wsp

    w10:
             cmp     [ovi.dwMajorVersion], 10
             jne     w8x

             cmp     [ovi.dwMinorVersion], 0
             jne     lastv

             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             jne     ws2k16

             invoke  lstrcat, [buff], ' 10'
             cmp     [ovi.dwBuildNumber], 16299
             jl      w10c

             invoke  lstrcat, [buff], ' (Fall Creators)'
             jmp     wsp

    w10c:
             cmp     [ovi.dwBuildNumber], 15063
             jl      w10a

             invoke  lstrcat, [buff], ' (Creators)'
             jmp     wsp

    w10a:
             cmp     [ovi.dwBuildNumber], 14393
             jl      wsp

             invoke  lstrcat, [buff], ' (Anniversary)'
             jmp     wsp

    ws2k16:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], ' 2016'
             jmp     wsp

    w8x:
             cmp     [ovi.dwMajorVersion], 6
             jne     whome

             cmp     [ovi.dwMinorVersion], 3
             jne     win8

             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             jne     ws2k12r2

             invoke  lstrcat, [buff], ' 8.1'
             jmp     wsp

    ws2k12r2:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2012 R2'
             jmp     wsp

    win8:
             cmp     [ovi.dwMinorVersion], 2
             jne     win7

             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             jne     ws2k12

             invoke  lstrcat, [buff], ' 8'
             jmp     wsp

    ws2k12:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2012'
             jmp     wsp

    win7:
             cmp     [ovi.dwMinorVersion], 1
             jne     wvista

             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             jne     ws2k8r2

             invoke  lstrcat, [buff], ' 7'
             jmp     smed

    ws2k8r2:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2008 R2'
             jmp     wsp

    wvista:
             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             jne     ws2k8

             invoke  lstrcat, [buff], ' Vista'
             jmp     smed

    ws2k8:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2008'
             jmp     wsp

    whome:
             cmp     [ovi.dwMajorVersion], 5
             jne     unknown

             cmp     [ovi.dwMinorVersion], 2
             jne     wxp

             xor     eax, eax
             mov     ax, [ovi.wSuiteMask]
             and     eax, VER_SUITE_WH_SERVER
             jne     ws2k3r2

             invoke  lstrcat, [buff], ' Home'
             jmp     wsp

    ws2k3r2:
             invoke  GetSystemMetrics, SM_SERVERR2
             test    eax, eax
             jz      ws2k3

             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             je      wxppro

             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2003 R2'
             jmp     wsp

    ws2k3:
             cmp     [ovi.wProductType], VER_NT_WORKSTATION
             je      wxppro

             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2003'
             jmp     wsp

    wxppro:
             invoke  lstrcat, [buff], ' XP (Professional)'
             jmp     wsp

    wxp:
             cmp     [ovi.dwMinorVersion], 1
             jne     w2k

             invoke  lstrcat, [buff], ' XP'
             jmp     smed

    w2k:
             invoke  lstrcat, [buff], wser
             invoke  lstrcat, [buff], '2000'
             jmp     wsp

    unknown:
             invoke  lstrcat, [buff], ' (Old version)'
             jmp     eofver

    smed:
             invoke  GetSystemMetrics, SM_MEDIACENTER
             test    eax, eax
             jz      starter

             invoke  lstrcat, [buff], ' (Media Center)'
             jmp     wsp

    starter:
             invoke  GetSystemMetrics, SM_STARTER
             test    eax, eax
             jz      tablet

             invoke  lstrcat, [buff], ' (Starter)'
             jmp     wsp

    tablet:
             invoke  GetSystemMetrics, SM_TABLETPC
             test    eax, eax
             jz      wsp

             invoke  lstrcat, [buff], ' (Tablet)'

    wsp:

             cmp     [ovi.wServicePackMajor], 1
             jl      eofver

             xor     ecx, ecx
             mov     cx, [ovi.wServicePackMajor]

             cinvoke sprintf,\
                     [buff],\
                     '%s %s %d',\
                     [buff],\
                     'Service Pack',\
                     ecx

    eofver:
             cinvoke printf, [buff]
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--sleep'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             stdcall s2l, dword [esi], 0
             invoke  Sleep, eax
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--download'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             cmp     byte [esi], 0
             je      error

             mov     ebx, dword [esi]

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      dodir

             add     esi, 4
             cmp     byte [esi], 0
             je      error

             invoke  PathIsDirectory, dword [esi]
             test    eax, eax
             jz      dofile

             mov     [bdat], 1
             sub     esi, 4
             jmp     dodir

     dofile:
             mov     eax, dword [esi]
             jmp     chkdt

     dodir:
             invoke  lstrcpy, smbf, dword [esi]
             invoke  lstrlen, dword [esi]
             push    eax
             mov     eax, smbf
             pop     ecx
             add     eax, ecx

     bogfl:
             cmp     byte [eax], '?'
             jne     novar

             mov     byte [eax], 0
             jmp     eofnl

     novar:
             cmp     byte [eax], '/'
             jne     eofnl

             inc     eax
             jmp     chkdt

     eofnl:
             dec     eax
             dec     ecx
             test    ecx, ecx
             jnz     bogfl

     eofstr:
             mov     byte [eax], 0
             jmp     gfile

     chkdt:
             push    eax
             cmp     [bdat], 1
             jne     urldl

             add     esi, 4
             invoke  lstrlen, dword [esi]
             push    eax
             mov     eax, dword [esi]
             mov     edx, eax
             pop     ecx
             add     eax, ecx

     dtclr:
             dec     eax
             cmp     byte [eax], '\'
             jne     gfile

             cmp     eax, edx
             je      eofstr

             mov     byte [eax], 0
             jmp     dtclr

     gfile:
             sub     eax, ecx
             inc     eax
             pop     ecx
             cinvoke sprintf, [buff], '%s\%s', eax, ecx
             push    [buff]

     urldl:
             pop     eax
             invoke  URLDownloadToFile,\
                     0,\
                     ebx,\
                     eax,\
                     BINDF_GETNEWESTVERSION or BINDF_IGNORESECURITYPROBLEM,\
                     0

             jmp     xret

     @@:
             invoke  lstrcmpi, dword [esi], '--zip'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [bdat], 0
             add     esi, 4
             invoke  lstrcmpi, dword [esi], squi
             jne     noq

             mov     [bdat], 1
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4

     noq:
             mov     eax,  dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [tmp], eax
             invoke  lstrlen, eax
             dec     eax
             add     eax, [tmp]
             cmp     byte [eax], ':'
             jne     nodrv

             invoke  lstrcpy, bmbf, [tmp]
             invoke  lstrlen, bmbf
             add     eax, bmbf
             mov     byte [eax], '\'
             mov     eax, bmbf
             mov     [tmp], eax

     nodrv:
             invoke  PathIsDirectory, [tmp]
             test    eax, eax
             jnz     fzip

             invoke  PathFileExists, [tmp]
             test    eax, eax
             jz      error

             invoke  PathFindFileName, [tmp]
             test    eax, eax
             jz      error

             push    eax
             invoke  lstrcpy, dpbf, eax
             pop     eax
             mov     byte [eax], 0
             cmp     eax, [tmp]
             jne     fzip

             invoke  lstrcpy, bmbf, '.\'
             mov     eax, bmbf
             mov     [tmp], eax

     fzip:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     parg

     cpyn:
             mov     eax, dpbf
             cmp     byte [eax], 0
             je      cpyn2

             invoke  lstrcat, smbf, eax
             jmp     chkx

     cpyn2:
             invoke  PathFindFileName, [tmp]
             test    eax, eax
             jz      error

             invoke  lstrcpy, cpbf, eax
             invoke  lstrlen, cpbf
             dec     eax
             add     eax, cpbf
             cmp     byte [eax], '\'
             jne     nodirs

             mov     byte [eax], 0

     nodirs:
             dec     eax
             cmp     byte [eax], ':'
             jne     nodrv2

             mov     byte [eax], 0

     nodrv2:
             invoke  lstrcat, smbf, cpbf

     chkx:
             invoke  PathFindExtension, smbf
             mov     byte [eax], 0
             invoke  lstrcat, smbf, zip
             mov     [xtr], smbf

     czf:
             invoke  PathFileExists, [xtr]
             test    eax, eax
             jnz     cshell

             stdcall fwrite, [xtr], zipf, 22
             jmp     cshell

     parg:
             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      cpyn

             mov     [xtr], eax
             invoke  PathIsDirectory, eax
             test    eax, eax
             jz      dof

             invoke  lstrcpy, smbf, [xtr]
             invoke  lstrlen, smbf
             dec     eax
             add     eax, smbf
             cmp     byte [eax], '\'
             je      cpyn

             inc     eax
             mov     byte [eax], '\'
             inc     eax
             mov     byte [eax], 0
             jmp     cpyn

     dof:
             invoke  PathFindExtension, [xtr]
             invoke  lstrcmpi, eax, zip
             test    eax, eax
             jz      czf

             invoke  lstrcpy, smbf, [xtr]
             invoke  lstrcat, smbf, zip
             mov     [xtr], smbf
             jmp     czf

     cshell:
             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     CLSID_Shell,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IShellDispatch,\
                     ShellDispatch

             test    eax, eax
             jnz     error

             mov     [cla], 0
             mov     [clb], 0
             mov     [lpt], 0

             invoke  GetFullPathName,\
                     [xtr],\
                     MAX_PATH,\
                     cpbf,\
                     NULL

             invoke  lstrlen, cpbf
             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      unzerr

             mov     [clb], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     cpbf,\
                     [xtr],\
                     eax,\
                     [xtr]

             invoke  GetFullPathName,\
                     [tmp],\
                     MAX_PATH,\
                     cpbf,\
                     NULL

             invoke  lstrlen, cpbf
             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      unzerr

             mov     [cla], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     cpbf,\
                     [xtr],\
                     eax,\
                     [xtr]

             cominvk ShellDispatch,\
                     NameSpace,\
                     VT_BSTR,\
                     0,\
                     [cla],\
                     0,\
                     Folder

             test   eax, eax
             jnz    unzerr

             cominvk ShellDispatch,\
                     NameSpace,\
                     VT_BSTR,\
                     0,\
                     [clb],\
                     0,\
                     ZipFile

             test    eax, eax
             jnz     unzerr

             cominvk Folder, Items, ZipItems
             test    eax, eax
             jnz     unzerr

             cominvk ZipItems, get_Count, cnt
             test    eax, eax
             jnz     unzerr

             cmp     [cnt], 1
             jl      unzerr

             mov     eax, [ZipItems]
             mov     [xtrb], eax
             mov     eax, dpbf
             cmp     byte [eax], 0
             je      sns

    chkf:
             dec     [cnt]
             cmp     [cnt], -1
             je      unzerr

             cominvk ZipItems,\
                     Item,\
                     VT_I4,\
                     0,\
                     [cnt],\
                     0,\
                     FolderItem

            test     eax, eax
            jnz      unzerr

            cominvk FolderItem, get_Name, lpt
            cinvoke sprintf, smbf, szwz, [lpt]
            invoke  lstrcmpi, smbf, dpbf
            test    eax, eax
            jnz     fir

            mov     eax, [FolderItem]
            mov     [xtrb], eax
            jmp     sns

    fir:
            cominvk FolderItem, Release
            mov     [FolderItem], 0
            jmp     chkf

    sns:
             xor     eax, eax
             cmp     [bdat], 1
             jne     dfch

             mov     eax, FOF_NO_UI

    dfch:
             cominvk ZipFile,\
                     CopyHere,\
                     VT_DISPATCH,\
                     0,\
                     [xtrb],\
                     0,\
                     VT_I4,\
                     0,\
                     eax,\
                     0

             test    eax, eax
             jnz     unzerr

             invoke  CreateToolhelp32Snapshot, TH32CS_SNAPTHREAD, 0
             cmp     eax, INVALID_HANDLE_VALUE
             je      unzerr

             mov     [aux], eax
             invoke  RtlZeroMemory, the, sizeof.THREADENTRY32
             mov     [the.dwSize], sizeof.THREADENTRY32
             invoke  Thread32First, [aux], the
             test    eax, eax
             jz      eofzip

             invoke  GetCurrentProcessId
             mov     [tmp], eax
             invoke  GetCurrentThreadId
             mov     [xtr], eax

             invoke  RtlZeroMemory,\
                     ovi,\
                     sizeof.RTL_OSVERSIONINFOEXW
             mov     [ovi.dwOSVersionInfoSize], sizeof.RTL_OSVERSIONINFOEXW
             invoke  RtlGetVersion, ovi

             mov     [cnt], 5                                                                                                ; windows 10 (last thread).
             cmp     [ovi.dwMajorVersion], 10
             jge     chkth

             mov     [cnt], 0                                                                                                ; windows 10 previous versions

     chkth:
             mov     eax, [tmp]
             cmp     [the.th32OwnerProcessID], eax
             jne     nexth

             mov     eax, [xtr]
             cmp     [the.th32ThreadID], eax
             je      nexth

             inc     [cnt]                                                                                                   ; windows 10 previous versions
             cmp     [cnt], 4                                                                                                ; windows 10 previous versions
             je      eofzip

             invoke  OpenThread, SYNCHRONIZE, FALSE, [the.th32ThreadID]
             test    eax, eax
             jz      nexth

             push    eax
             invoke  CloseHandle, [hacc]
             pop     eax
             mov     [hacc], eax

     nexth:
             mov     [the.dwSize], sizeof.THREADENTRY32
             invoke  Thread32Next, [aux], the
             test    eax, eax
             jnz     chkth

     eofzip:
             invoke  CloseHandle, [aux]
             invoke  WaitForSingleObject, [hacc], INFINITE
             invoke  CloseHandle, [hacc]

             cmp     [FolderItem], 0
             je      zexit

             cominvk FolderItem, Release

     zexit:
             xor     eax, eax
             jmp     uzok

     @@:
             invoke  lstrcmpi, dword [esi], '--unzip'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [bdat], 0
             add     esi, 4
             invoke  lstrcmpi, dword [esi], squi
             jne     noq2

             mov     [bdat], 1
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4

     noq2:
             cmp     byte [esi], 0
             je      error

             invoke  PathFindExtension, dword [esi]
             invoke  lstrcmpi, eax, zip
             test    eax, eax
             jnz     error

             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     CLSID_Shell,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IShellDispatch,\
                     ShellDispatch

             test    eax, eax
             jnz     error

             mov     [cla], 0
             mov     [clb], 0
             mov     [lpt], 0

             invoke  GetFullPathName,\
                     dword [esi],\
                     MAX_PATH,\
                     smbf,\
                     NULL

             invoke  lstrlen, smbf
             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      unzerr

             mov     [cla], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     smbf,\
                     [xtr],\
                     eax,\
                     [xtr]

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     uzarg

             invoke  lstrcpy, [buff], dword [esi]
             test    eax, eax
             jz      unzerr

             invoke  lstrlen, eax
             test    eax, eax
             jz      unzerr

             sub     eax, 4
             add     eax, [buff]
             mov     byte [eax], 0
             mov     esi, buff
             jmp     uzfldr

     uzarg:
             add     esi, 4

     uzfldr:
             cmp     byte [esi], 0
             je      unzerr

             invoke  PathIsDirectory, dword [esi]
             test    eax, eax
             jnz     nomkd

             invoke  CreateDirectory, dword [esi], 0
             test    eax, eax
             jz      unzerr

     nomkd:
             invoke  GetFullPathName,\
                     dword [esi],\
                     MAX_PATH,\
                     smbf,\
                     NULL

             invoke  lstrlen, smbf
             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      unzerr

             mov     [clb], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     smbf,\
                     [xtr],\
                     eax,\
                     [xtr]

             cominvk ShellDispatch,\
                     NameSpace,\
                     VT_BSTR,\
                     0,\
                     [cla],\
                     0,\
                     ZipFile
              test   eax, eax
              jnz    unzerr

             cominvk ShellDispatch,\
                     NameSpace,\
                     VT_BSTR,\
                     0,\
                     [clb],\
                     0,\
                     Folder
              test   eax, eax
              jnz    unzerr

             cominvk ZipFile, Items, ZipItems
             test    eax, eax
             jnz     unzerr

             cominvk ZipItems, get_Count, lpt
             test    eax, eax
             jnz     unzerr

             cmp     [lpt], 1
             jl      unzerr

             xor     eax, eax
             cmp     [bdat], 1
             jne     dfch2

             mov     eax, FOF_NO_UI

    dfch2:
             cominvk Folder,\
                     CopyHere,\
                     VT_DISPATCH,\
                     0,\
                     [ZipItems],\
                     0,\
                     VT_I4,\
                     0,\
                     eax,\
                     0

             test    eax, eax
             jz      uzok

    unzerr:
             mov     eax, 1

    uzok:
             push    eax
             cmp     [ZipItems], 0
             je      dfree

             cominvk ZipItems, Release

    dfree:
             cmp     [Folder], 0
             je      fifree

             cominvk Folder, Release

    fifree:
             cmp     [ZipFile], 0
             je      sfree

             cominvk ZipFile, Release

    sfree:
             cominvk ShellDispatch, Release
             cmp     [cla], 0
             je      bfree

             invoke  SysFreeString, [cla]

    bfree:
             cmp     [clb], 0
             je      uzuni

             invoke  SysFreeString, [clb]

    uzuni:
             invoke  CoUninitialize
             pop     eax
             jmp     xret


    @@:
             invoke  lstrcmpi, dword [esi], '--regexp'
             test    eax, eax
             jnz     @f

             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     CLSID_RegExp,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IRegExp,\
                     RegExp

             test    eax, eax
             jnz     xerr

             mov     [bdat], 0
             mov     [cnt], 0
             mov     [cla], 0
             mov     [clb], 0
             mov     [clx], 0

    rxargs:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rxop

             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/extent'
             test    eax, eax
             jnz     icase

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rxop

             add     esi, 4
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      rxargs

             mov     [cnt], eax
             jmp     rxargs

    icase:
             invoke  lstrcmpi, dword [esi], '/i'
             test    eax, eax
             jnz     global

             cominvk RegExp, put_IgnoreCase, VARIANT_TRUE
             jmp     rxargs

    global:
             invoke  lstrcmpi, dword [esi], '/g'
             test    eax, eax
             jnz     rxtest

             cominvk RegExp, put_Global, VARIANT_TRUE
             jmp     rxargs

    rxtest:
             invoke  lstrcmpi, dword [esi], '/test'
             test    eax, eax
             jnz     replace

             mov     [bdat], 1
             jmp     rxargs

    replace:
             invoke  lstrcmpi, dword [esi], '/replace'
             test    eax, eax
             jnz     rxstrs

             mov     [bdat], 2
             jmp     rxargs

    rxstrs:
             invoke  lstrlen, dword [esi]
             mov     [xtr], eax
             mov     ecx, eax
             add     ecx, [cnt]
             mov     [cnt], ecx
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      xerr

             push    eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     dword [esi],\
                     [xtr],\
                     eax,\
                     [xtr]

             pop     eax
             cmp     [cla], 0
             jne     wclb

             mov     [cla], eax
             jmp     rxargs

    wclb:
             cmp     [clb], 0
             jne     wclx

             mov     [clb], eax
             jmp     rxargs

    wclx:
             cmp     [clx], 0
             jne     rlst

             mov     [clx], eax
             jmp     rxargs

    rlst:
             push    eax
             invoke  SysFreeString, [clx]
             pop     eax
             mov     [clx], eax
             jmp     rxargs

    rxop:
             cmp     [cla], 0
             je      rxerr

             cominvk RegExp, put_Pattern, [cla]

             cmp     [clb], 0
             je      rxerr

             cmp     [bdat], 2
             jne     rtest

             cmp     [clx], 0
             je      rxerr

             mov     ecx, [cnt]
             add     ecx, 2048
             mov     [cnt], ecx
             invoke  SysAllocStringLen, 0, ecx
             test    eax, eax
             jz      rxerr

             mov     [lpt], eax
             cominvk RegExp, Replace, [clb], [clx], lpt
             mov     eax, [cnt]
             cmp     eax, [size]
             jl      rxw2m

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jz      rxerr

             mov     [buff], eax

    rxw2m:
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [lpt],\
                     -1,\
                     [buff],\
                     [cnt],\
                     0,\
                     0

             invoke  lstrlen, [buff]
             invoke  WriteFile, [stdo], [buff], eax, 0, 0
             xor     eax, eax
             jmp     release

    rtest:
             cmp     [bdat], 1
             jne     rxerr

             cominvk RegExp, Test, [clb], bdw
             xor     eax, eax
             mov     ax, [bdw]
             jmp     release

    rxerr:
             mov     eax, -1

    release:
             push    eax
             cmp     [cla], 0
             je      rclb

             invoke  SysFreeString, [cla]
             mov     [cla], 0

    rclb:
             cmp     [clb], 0
             je      rclx

             invoke  SysFreeString, [clb]
             mov     [clb], 0

    rclx:

             cmp     [clx], 0
             je      rxuni

             invoke  SysFreeString, [clx]
             mov     [clx], 0

    rxuni:
             cominvk RegExp, Release
             invoke  CoUninitialize
             pop     eax
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--speak'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             mov     [tmp], eax
             invoke  lstrcmpi, eax, sfle
             test    eax, eax
             jnz     speak

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             stdcall fread, dword [esi]
             test    eax, eax
             jz      error

             cmp     eax, -1
             je      error

             mov     eax, [buff]
             mov     [tmp], eax

    speak:
             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     CLSID_SpVoice,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_ISpVoice,\
                     SpVoice

             test    eax, eax
             jnz     error

             invoke  lstrlen, [tmp]
             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      sperr

             mov     [cla], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     [xtr],\
                     eax,\
                     [xtr]

             cominvk SpVoice, Speak, [cla], 0, 0
             cominvk SpVoice, Release
             invoke  SysFreeString, [cla]
             invoke  CoUninitialize
             jmp     exit

    sperr:
             cmp     [SpVoice], 0
             je      sperr3

             cominvk SpVoice, Release

    sperr2:
             cmp     [cla], 0
             je      sperr2

             invoke  SysFreeString, [cla]

    sperr3:
             invoke  CoUninitialize
             jmp     error


    @@:
             invoke  lstrcmpi, dword [esi], '--script-encoder'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [bdat], 0
             mov     [spbx], 0
             mov     [xtrb], 0
             mov     [xtr], 0
             mov     [cnt], 0

    scrarg:
             add     esi, 4
             invoke  lstrcmpi, dword [esi], sfle
             test    eax, eax
             jnz     scrtype

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             stdcall fread, dword [esi]
             test    eax, eax
             jz      error

             cmp     eax, -1
             je      error

             mov     [cnt], eax
             mov     eax, [buff]
             mov     [tmp], eax
             invoke  PathFindExtension, dword [esi]
             test    eax, eax
             jz      eofsarg

             inc     eax
             push    eax

   scrext:
             invoke  CharLower, eax
             pop     eax
             cmp     byte [eax], 'j'
             jne     xvbs

             inc     eax
             cmp     byte [eax], 's'
             jne     scrtype

             inc     eax
             cmp     byte [eax], 0
             jne     scrtype

             mov     [spbx], jsx
             mov     [xtrb], jsl
             jmp     eofsarg

    xvbs:
             cmp     byte [eax], 'v'
             jne     scrtype

             inc     eax
             cmp     byte [eax], 'b'
             jne     scrtype

             inc     eax
             cmp     byte [eax], 's'
             jne     scrtype

             inc     eax
             cmp     byte [eax], 0
             jne     scrtype

             mov     [spbx], vbsx
             mov     [xtrb], vbsl
             jmp     eofsarg

    scrtype:
             invoke  lstrcmpi, dword [esi], styp
             test    eax, eax
             jnz     scrout

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             push    eax
             cmp     byte [eax], '.'
             jne     scrext

             pop     eax
             inc     eax
             push    eax
             jmp     scrext

    scrout:
             invoke  lstrcmpi, dword [esi], sout
             test    eax, eax
             jnz     b64out

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [xtr], eax
             jmp     eofsarg

    b64out:
             invoke  lstrcmpi, dword [esi], '/base64'
             test    eax, eax
             jnz     scrdef

             mov     [bdat], 1
             jmp     eofsarg

    scrdef:
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [tmp], eax

    eofsarg:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     scrarg

             cmp     [spbx], 0
             je      error

             cmp     [xtr], 0
             jne     screnc

             mov     [bdat], 1

    screnc:
             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     CLSID_ScriptingEncoder,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IScriptEncoder,\
                     ScriptEncoder

             test    eax, eax
             jnz     error

             cmp     [cnt], 0
             jne     csws

             invoke  lstrlen, [tmp]
             mov     [cnt], eax

    csws:
             invoke  SysAllocStringLen, 0, [cnt]
             test    eax, eax
             jz      screrr

             mov     [cla], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     [cnt],\
                     [cla],\
                     [cnt]

             cominvk ScriptEncoder,\
                     EncodeScriptFile,\
                     [spbx],\
                     [cla],\
                     0,\
                     [xtrb],\
                     pout

             push    eax
             invoke  SysFreeString, [cla]
             pop     eax
             test    eax, eax
             jz      scrfs

    screrr:
             mov     eax, 1
             jmp     eofscre

    screrr2:
             invoke  SysFreeString, [pout]
             jmp     screrr

    scrfs:
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [pout],\
                     -1,\
                     0,\
                     0,\
                     0,\
                     0

             mov     [cnt], eax
             cmp     eax, [size]
             jl      ws2mbe

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jz      screrr2
             mov     [buff], eax

    ws2mbe:
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [pout],\
                     [cnt],\
                     [buff],\
                     [size],\
                     0,\
                     0

             invoke  SysFreeString, [pout]
             mov     eax, [buff]
             mov     [pout], 0
             cmp     [bdat], 1
             jne     screout

             invoke  CryptBinaryToString,\
                     [buff],\
                     [cnt],\
                     CRYPT_STRING_BASE64 or CRYPT_STRING_NOCRLF,\
                     0,\
                     lpt,\

             test    eax, eax
             jz      screrr

             mov     eax, [lpt]
             inc     eax
             cinvoke malloc, eax
             test    eax, eax
             jz      screrr

             mov     [pout], eax
             invoke  CryptBinaryToString,\
                     [buff],\
                     [cnt],\
                     CRYPT_STRING_BASE64 or CRYPT_STRING_NOCRLF,\
                     [pout],\
                     lpt,\

             mov     eax, [lpt]
             mov     [cnt], eax
             mov     eax, [pout]
             cmp     [xtr], 0
             je      scrprn

    screout:
             stdcall fwrite, [xtr], eax, [cnt]
             push    eax
             cmp     [pout], 0
             je      scret

             cinvoke free, [pout]

    scret:
             pop     eax
             cmp     eax, -1
             je      screrr

             xor     eax, eax
             jmp     eofscre

    scrprn:
             cinvoke printf, [pout]
             cinvoke free, [pout]
             xor     eax, eax

    eofscre:
             push    eax
             cominvk ScriptEncoder, Release
             invoke  CoUninitialize
             pop     eax
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--js'
             test    eax, eax
             jnz     @f

             mov     eax, CLSID_JScript
             mov     [tmp], eax
             jmp     script

    @@:
             invoke  lstrcmpi, dword [esi], '--js-encoded'
             test    eax, eax
             jnz     @f

             mov     eax, CLSID_JSEncoding
             mov     [tmp], eax
             jmp     script

    @@:
             invoke  lstrcmpi, dword [esi], '--vbs'
             test    eax, eax
             jnz     @f

             mov     eax, CLSID_VBScript
             mov     [tmp], eax
             jmp     script

    @@:
             invoke  lstrcmpi, dword [esi], '--vbs-encoded'
             test    eax, eax
             jnz     @f

             mov     eax, CLSID_VBSEncoding
             mov     [tmp], eax

    script:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             invoke  CoInitialize, 0
             invoke  CoCreateInstance,\
                     [tmp],\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IActiveScript,\
                     ActiveScript

             test    eax, eax
             jnz     error

             mov     [nret], 0
             invoke  GetProcessHeap
             invoke  HeapAlloc, eax, HEAP_ZERO_MEMORY, sizeof.SCR_OBJ
             test    eax, eax
             jnz     scrmem

             mov     [nret], 1
             jmp     eofscr

    scrmem:
             mov     [pmo], eax
             mov     [eax + SCR_OBJ.iActiveScriptSite], vtblIActiveScriptSite
             mov     [eax + SCR_OBJ.Base0], 0
             mov     [eax + SCR_OBJ.iActiveScriptSiteWindow], vtblIActiveScriptSiteWindow
             mov     [eax + SCR_OBJ.Base1], 8
             mov     [eax + SCR_OBJ.iConsoleDispatch], vtblIConsoleDispatch
             mov     [eax + SCR_OBJ.Base2], 16

             cominvk ActiveScript,\
                     QueryInterface,\
                     IID_IActiveScriptParse,\
                     ActiveScriptParse

             test    eax, eax
             jz      noerr1

             mov     [nret], 1
             jmp     rso

    noerr1:
             add     esi, 4
             mov     eax, dword [esi]
             mov     [tmp], eax
             invoke  lstrcmpi, eax, sfle
             test    eax, eax
             jnz     cvargs

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     noerr2

    sferr:
             mov     [nret], 1
             jmp     rpo

    sferr2:
             mov     [nret], 1
             jmp     fva

    noerr2:
             add     esi, 4
             stdcall fread, dword [esi]
             test    eax, eax
             jz      sferr

             cmp     eax, -1
             je      sferr

             mov     eax, [buff]
             mov     [tmp], eax

    cvargs:
             call    vargs
             test    eax, eax
             jz      sferr

             invoke  lstrlen, [tmp]
             mov     [cnt], eax

             cinvoke strstr, [tmp], ' '
             test    eax, eax
             jnz     runsc

             invoke  CryptStringToBinary,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64,\
                     0,\
                     lpt,\
                     0,\
                     0

             test    eax, eax
             jz      runsc

             cmp     [lpt], 4
             jl      runsc

             mov     eax, [lpt]
             inc     eax
             cmp     eax, [size]
             jl      scdec

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jz      sferr2
             mov     [buff], eax

    scdec:
             invoke  CryptStringToBinary,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64,\
                     [buff],\
                     lpt,\
                     0,\
                     0

             mov     eax, [buff]
             mov     [tmp], eax
             mov     eax, [lpt]
             inc     eax
             mov     [cnt], eax

    runsc:
             invoke  SysAllocStringLen, 0, [cnt]
             test    eax, eax
             jz      sferr2

             mov     [cook], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     [cnt],\
                     eax,\
                     [cnt]

             jmp     addscr

    fwserr:
             cominvk ActiveScript, GetScriptState, cnt
             cmp     [cnt], SCRIPTSTATE_UNINITIALIZED
             je      rws

             mov     [nret], 1
             jmp     rws

    addscr:
             mov     eax, [pmo]
             lea     eax, [eax + SCR_OBJ.iActiveScriptSite]
             cominvk ActiveScript, SetScriptSite, eax
             test    eax, eax
             jnz     fwserr

             cominvk ActiveScriptParse, InitNew
             test    eax, eax
             jnz     fwserr

             cominvk ActiveScript,\
                     AddNamedItem,\
                     wcon,\
                     SCRIPTITEM_ISVISIBLE or SCRIPTITEM_NOCODE

             test    eax, eax
             jnz     fwserr

             mov     [nret], 0
             cominvk ActiveScriptParse,\
                     ParseScriptText,\
                     [cook],\
                     0,\
                     0,\
                     0,\
                     0,\
                     0,\
                     0,\
                     0,\
                     0

             test    eax, eax
             jnz     fwserr

             cominvk ActiveScript,\
                     SetScriptState,\
                     SCRIPTSTATE_CONNECTED
             test    eax, eax
             jnz     fwserr

    rws:
             invoke  SysFreeString, [cook]

    fva:
             call    freeva

    rpo:
             cominvk ActiveScriptParse, Release

    rso:
             cominvk ActiveScript, Release
             cmp     [pmo], 0
             je      eofscr

             invoke  GetProcessHeap
             invoke  HeapFree, eax, [pmo]

    eofscr:
             invoke  CoUninitialize
             mov     eax, [nret]
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--web-browser'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             invoke  RtlZeroMemory,\
                     ovi,\
                     sizeof.RTL_OSVERSIONINFOEXW
             mov     [ovi.dwOSVersionInfoSize], sizeof.RTL_OSVERSIONINFOEXW
             invoke  RtlGetVersion, ovi

             invoke  RegOpenKeyEx,\
                     HKEY_LOCAL_MACHINE,\
                     'Software\Microsoft\Internet Explorer',\
                     0,\
                     KEY_READ,\
                     tmp

             test    eax, eax
             jnz     ldatl

             mov     [cnt], MAX_PATH
             mov     [xtr], REG_SZ
             mov     [bdat], 0
             mov     [lpt], 0
             invoke  RegQueryValueEx,\
                     [tmp],\
                     'svcVersion',\
                     0,\
                     xtr,\
                     cpbf,\
                     cnt

             test    eax, eax
             jz      creg

             mov     [bdat], 1
             invoke  RegQueryValueEx,\
                     [tmp],\
                     'Version',\
                     0,\
                     xtr,\
                     cpbf,\
                     cnt

             test    eax, eax
             jz      creg

             mov     [bdat], 2
    creg:
             invoke  RegCloseKey, [tmp]
             cmp     [bdat], 2
             je      ldatl

             mov     eax, cpbf
             cmp     [bdat], 1
             je      ie9

             cmp     byte [eax], '1'
             jne     ie9

             inc     eax
             cmp     byte [eax], '1'
             jne     ie10

    ie11:
             mov     [lpt], 11000
             jmp     putie

    ie10:
             cmp     byte [eax], '0'
             jne     ie11

             mov     [lpt], 10000
             jmp     putie

    ie9:
             cmp     byte [eax], '9'
             jne     ie8

             mov     [lpt], 9000
             jmp     putie

    ie8:
             cmp     byte [eax], '8'
             jne     ldatl

             mov     [lpt], 8000

    putie:
             cmp     [lpt], 0
             je      ldatl

             mov     eax, [appn]
             invoke  PathFindFileName, dword [eax]
             test    eax, eax
             jz      ldatl

             invoke  lstrcpy, cpbf, eax
             invoke  CharLower, cpbf
             invoke  PathFindExtension, cpbf
             invoke  lstrcmp, eax, exe
             jz      wfbe

             invoke  lstrcat, cpbf, exe

    wfbe:
             invoke  RegOpenKeyEx,\
                     HKEY_CURRENT_USER,\
                     fbe,\
                     0,\
                     KEY_WRITE,\
                     tmp

             test    eax, eax
             jz      sregv

             invoke  RegCreateKeyEx,\
                     HKEY_CURRENT_USER,\
                     fbe,\
                     0,\
                     0,\
                     REG_OPTION_NON_VOLATILE,\
                     KEY_WRITE,\
                     0,\
                     tmp,\
                     0

             test    eax, eax
             jnz     ldatl

    sregv:
             invoke  RegSetValueEx,\
                     [tmp],\
                     cpbf,\
                     0,\
                     REG_DWORD,\
                     lpt,\
                     4

             invoke  RegCloseKey, [tmp]

    ldatl:
             invoke  LoadLibrary, atl
             test    eax, eax
             jz      error

             mov     [env], eax
             invoke  GetProcAddress, eax, axwi
             test    eax, eax
             jnz     atlini

    wberr:
             invoke  FreeLibrary, [env]
             jmp     error

    atlini:
             call    eax
             test    eax, eax
             jz      wberr

             mov     [tmp], 0
             mov     [xtr], 0
             mov     [cla], 640
             mov     [clb], 480
             mov     [bdw], 0
             mov     [bsrm], 0
             mov     [nlpp], 0
             mov     [smp], 0
             mov     [argv], 0

    wbargs:
             add     esi, 4
             invoke  lstrcmpi, dword [esi], sttl
             test    eax, eax
             jnz     unttl

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [smp], eax
             jmp     ekarg

    unttl:
             invoke  lstrcmpi, dword [esi], '/key'
             test    eax, eax
             jnz     gargs

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [key], eax
             jmp     ekarg

    gargs:
             invoke  lstrcmpi, dword [esi], sarg
             test    eax, eax
             jnz     trusted

             call    vargs
             test    eax, eax
             jz      wberr

             jmp     wbcw

    trusted:
             invoke  lstrcmpi, dword [esi], '/trusted'
             test    eax, eax
             jnz     flat

             mov     [bsrm], 1
             jmp     ekarg

    flat:
             invoke  lstrcmpi, dword [esi], sflt
             test    eax, eax
             jnz     resz

    unt:
             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 04h
             mov     [bdw], ax
             jmp     ekarg

    resz:
             invoke  lstrcmpi, dword [esi], srsz
             test    eax, eax
             jnz     dlgw

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 02h
             mov     [bdw], ax
             jmp     ekarg

    dlgw:
             invoke  lstrcmpi, dword [esi], sdlg
             test    eax, eax
             jnz     unscr

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 100h
             mov     [bdw], ax
             jmp     ekarg

    unscr:
             invoke  lstrcmpi, dword [esi], '/unscrolling'
             test    eax, eax
             jnz     unesc

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 10h
             mov     [bdw], ax
             jmp     ekarg

    unesc:
             invoke  lstrcmpi, dword [esi], sune
             test    eax, eax
             jnz     unsel

             mov     eax, [nlpp]
             or      eax, 01h
             mov     [nlpp], eax
             jmp     ekarg

    unsel:
             invoke  lstrcmpi, dword [esi], '/unselectable'
             test    eax, eax
             jnz     fscr

             mov     eax, [nlpp]
             or      eax, 10h
             mov     [nlpp], eax
             jmp     ekarg

    fscr:
             invoke  lstrcmpi, dword [esi], sfsn
             test    eax, eax
             jnz     wszn

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 1000h
             mov     [bdw], ax
             invoke  GetSystemMetrics, SM_CXSCREEN
             mov     [cla], eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             mov     [clb], eax
             jmp     unt

    wszn:
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             jne     wbww

             invoke  GetFullPathName,\
                     dword [esi],\
                     MAX_PATH,\
                     smbf,\
                     NULL

             test    eax, eax
             jnz     pchk

    urldef:
             mov     eax, dword [esi]
             jmp     uchk

    pchk:
             invoke  PathIsDirectory, smbf
             test    eax, eax
             jnz     wberr

             invoke  PathFileExists, smbf
             test    eax, eax
             jz      urldef

    p2url:
             invoke  lstrcpy, cpbf, 'file:///'
             invoke  lstrcat, cpbf, smbf
             mov     eax, cpbf

    bs2fs:
             cmp     byte [eax], 0
             je      eofs

             cmp     byte [eax], '\'
             jne     incp

             mov     byte [eax], '/'

    incp:
             inc     eax
             jmp     bs2fs

    eofs:
             mov     eax, cpbf
             push    eax
             jmp     urlok

    uchk:
             push    eax
             cinvoke strstr, eax, ':'
             mov     ecx, eax
             pop     eax
             push    eax
             test    ecx, ecx
             jnz     isurl

             invoke  lstrcpy, cpbf, 'http://'
             pop     eax
             invoke  lstrcat, cpbf, eax
             mov     eax, cpbf
             push    eax

    isurl:
             invoke  PathIsURL, eax
             test    eax, eax
             jnz     urlok

             pop     eax
             jmp     wberr

    urlok:
             pop     eax
             mov     [tmp], eax
             jmp     ekarg

    wbww:
             cmp     eax, 240
             jl      ekarg

             cmp     [cla], 640
             jne     wbwh

             push    eax
             invoke  GetSystemMetrics, SM_CXSCREEN
             pop     ebx
             xchg    eax, ebx
             cmp     ebx, eax
             jl      ekarg

             mov     [cla], eax
             jmp     ekarg

    wbwh:
             cmp     [clb], 480
             jne     ekarg

             push    eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             pop     ebx
             xchg    eax, ebx
             cmp     ebx, eax
             jl      ekarg

             mov     [clb], eax

    ekarg:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     wbargs

    wbcw:
             cmp     [argv], 0
             jne     wbcw2

             mov     [argc], 0

    wbcw2:
             mov     eax, [ofn.hInstance]
             mov     [wcls.hInstance], eax
             invoke  LoadIcon, eax, IDI_APPLICATION
             mov     [wcls.hIcon], eax
             invoke  LoadCursor, [wcls.hInstance], IDC_ARROW
             mov     [wcls.hCursor], eax
             invoke  RegisterClass, wcls
             test    eax, eax
             jz      wberr

             invoke  GetSystemMetrics, SM_CXSCREEN
             sub     eax, [cla]
             shr     eax, 1
             mov     [clx], eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             sub     eax, [clb]
             shr     eax, 1
             mov     [xtrb], eax
             mov     [bmre], 0
             xor     ecx, ecx
             mov     ecx, WS_VISIBLE
             or      ecx, WS_SYSMENU

             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 100h
             jz      minbtn

             or      ecx, WS_DLGFRAME
             jmp     reszw
    minbtn:

             or      ecx, WS_MINIMIZEBOX

    reszw:
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jz      wbcw3

             or      ecx, WS_THICKFRAME
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 100h
             jnz     wbcw3

             or      ecx, WS_MAXIMIZEBOX

    wbcw3:

             invoke  CreateWindowEx,\
                     0,\
                     clsn,\
                     0,\
                     ecx,\
                     [clx],\
                     [xtrb],\
                     [cla],\
                     [clb],\
                     [ofn.hwndOwner],\
                     0,\
                     [wcls.hInstance],\
                     0

             test    eax, eax
             jz      wberr

             mov     [clx], eax
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 04h
             jz      noflat

             invoke  SetWindowLong, [clx], GWL_EXSTYLE, 0
             mov     ecx, WS_VISIBLE
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 1000h
             jnz     notf

             or      ecx, WS_POPUP
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jz      notf

             or      ecx, WS_THICKFRAME

    notf:
             invoke  SetWindowLong, [clx], GWL_STYLE, ecx
             invoke  SetWindowPos,\
                     [clx],\
                     HWND_BOTTOM,\
                     0,\
                     0,\
                     0,\
                     0,\
                     SWP_NOSIZE or SWP_NOMOVE or SWP_FRAMECHANGED
             jmp     accel

    noflat:
             cmp     byte [smp], 0
             je      accel

             invoke  SetWindowText, [clx], [smp]

    accel:
             mov     [hacc], 0
             invoke  LoadAccelerators,\
                     [ofn.hInstance],\
                     ID_SHDOCLC_ACCEL

             test    eax, eax
             jz      wbmod

             mov     [hacc], eax

    wbmod:
             cmp     [bmod], 1
             jne     wbgm

             invoke  EnableWindow, [ofn.hwndOwner], FALSE

    wbgm:
             invoke  GetMessage, msg, 0, 0, 0
             test    eax, eax
             jz      eofkm

             cmp     [hacc], 0
             je      wbtm

             invoke  TranslateAccelerator, [clx], [hacc], msg
             test    eax, eax
             jnz     wbgm

    wbtm:
             invoke  TranslateMessage, msg
             cmp     [msg.message], WM_KEYUP
             jne     dpm

             cmp     [msg.wParam], VK_ESCAPE
             jne     dpm

             mov     eax, [nlpp]
             and     eax, 01h
             jnz     dpm

             cmp     [bmre], 1
             je      xfs

             invoke  SendMessage, [clx], WM_CLOSE, 0, 0

    xfs:
             mov     [bmre], 0

    dpm:
             invoke  DispatchMessage, msg
             jmp     wbgm

    eofkm:
             cmp     [bmod], 1
             jne     flib

             invoke  EnableWindow, [ofn.hwndOwner], TRUE
    flib:

             invoke  FreeLibrary, [env]
             call    freeva
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--swf'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             invoke  RtlZeroMemory,\
                     ovi,\
                     sizeof.RTL_OSVERSIONINFOEXW
             mov     [ovi.dwOSVersionInfoSize], sizeof.RTL_OSVERSIONINFOEXW
             invoke  RtlGetVersion, ovi

             invoke  LoadLibrary, atl
             test    eax, eax
             jz      error

             mov     [env], eax
             invoke  GetProcAddress, eax, axwi
             test    eax, eax
             jz      wberr

             call    eax
             test    eax, eax
             jz      wberr

             mov     [tmp], 0
             mov     [xtr], 0
             mov     [cla], 640
             mov     [clb], 480
             mov     [bdw], 0
             mov     [rowd], 0
             mov     [nlpp], 0
             mov     [smp], 0
             mov     [key], -1
             mov     [cnt], 0
             mov     [argv], 0
             invoke  RtlZeroMemory, [buff], [size]

    swargs:
             add     esi, 4
             invoke  lstrcmpi, dword [esi], sttl
             test    eax, eax
             jnz     swficon

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [smp], eax
             jmp     esarg

    swficon:
             invoke  lstrcmpi, dword [esi], '/icon'
             test    eax, eax
             jnz     gargs2

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [rowd], eax
             jmp     esarg

    gargs2:
             invoke  lstrcmpi, dword [esi], sarg
             test    eax, eax
             jnz     flat2

             invoke  lstrcat, [buff], tsta
             invoke  lstrcat, [buff], '{"arguments": ['

    gargs3:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     swfarg

             invoke  lstrcat, [buff], ']}'
             invoke  lstrcat, [buff], tstb
             invoke  lstrlen, [buff]
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      wberr

             mov     [argv], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [buff],\
                     ecx,\
                     eax,\
                     ecx
             jmp     swfcw

    swfarg:
             add     esi, 4
             cmp     [cnt], 0
             je      catarg

             invoke  lstrcat, [buff], ', '

    catarg:
             invoke  lstrcat, [buff], '"'
             invoke  lstrcat, [buff], dword [esi]
             invoke  lstrcat, [buff], '"'
             inc     [cnt]
             jmp     gargs3

    flat2:
             invoke  lstrcmpi, dword [esi], sflt
             test    eax, eax
             jnz     resz2

    unt2:
             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 04h
             mov     [bdw], ax
             jmp     esarg

    resz2:
             invoke  lstrcmpi, dword [esi], srsz
             test    eax, eax
             jnz     dlgw2

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 02h
             mov     [bdw], ax
             jmp     esarg

    dlgw2:
             invoke  lstrcmpi, dword [esi], sdlg
             test    eax, eax
             jnz     unesc2

             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 100h
             mov     [bdw], ax
             jmp     esarg

    unesc2:
             invoke  lstrcmpi, dword [esi], sune
             test    eax, eax
             jnz     nocm

             mov     eax, [nlpp]
             or      eax, 01h
             mov     [nlpp], eax
             jmp     esarg

    nocm:
             invoke  lstrcmpi, dword [esi], '/menuless'
             test    eax, eax
             jnz     region

             mov     eax, [nlpp]
             or      eax, 10h
             mov     [nlpp], eax
             jmp     esarg

    region:
             invoke  lstrcmpi, dword [esi], '/region'
             test    eax, eax
             jnz     alpha

             mov     eax, [nlpp]
             or      eax, 200h
             mov     [nlpp], eax
             jmp     fscn3

    alpha:
             invoke  lstrcmpi, dword [esi], '/alpha'
             test    eax, eax
             jnz     bckg

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      wberr

             cmp     eax, 100
             jg      wberr

             cmp     eax, 0
             jl      wberr

             mov     ecx, 255
             mov     ebx, 100
             mul     ecx
             xor     edx, edx
             div     ebx
             mov     [rowc], eax
             mov     eax, [nlpp]
             or      eax, 400h
             mov     [nlpp], eax
             jmp     fscn3

    bckg:
             invoke  lstrcmpi, dword [esi], '/background'
             test    eax, eax
             jnz     fscr2

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      wberr

             add     esi, 4
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             je      wberr

             mov     [key], eax
             jmp     esarg

    fscr2:
             invoke  lstrcmpi, dword [esi], sfsn
             test    eax, eax
             jnz     wszn2

    fscn3:
             xor     eax, eax
             mov     ax, [bdw]
             or      eax, 1000h
             mov     [bdw], ax
             invoke  GetSystemMetrics, SM_CXSCREEN
             mov     [cla], eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             mov     [clb], eax
             jmp     unt2

    wszn2:
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             jne     swww

             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      wberr

             mov     [tmp], eax
             invoke  GetFullPathName,\
                     [tmp],\
                     MAX_PATH,\
                     smbf,\
                     NULL

             cmp     eax, 0
             je      esarg

             invoke  PathFileExists, smbf
             test    eax, eax
             jz      esarg

             mov     [tmp], smbf
             jmp     esarg

    swww:
             cmp     eax, 240
             jl      esarg

             cmp     [cla], 640
             jne     swwh

             push    eax
             invoke  GetSystemMetrics, SM_CXSCREEN
             pop     ebx
             xchg    eax, ebx
             cmp     ebx, eax
             jl      esarg

             mov     [cla], eax
             jmp     esarg

    swwh:
             cmp     [clb], 480
             jne     esarg

             push    eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             pop     ebx
             xchg    eax, ebx
             cmp     ebx, eax
             jl      esarg

             mov     [clb], eax

    esarg:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     swargs

    swfcw:
             cmp     [rowd], 0
             je      defico

             invoke  LoadImage,\
                     0,\
                     [rowd],\
                     IMAGE_ICON,\
                     0,\
                     0,\
                     LR_LOADFROMFILE or LR_DEFAULTSIZE or LR_SHARED

             mov     [wcls.hIcon], eax
             test    eax, eax
             jnz     defwcls

    defico:
             invoke  LoadIcon, [ofn.hInstance], IDI_APPLICATION
             mov     [wcls.hIcon], eax

    defwcls:
             mov     eax, [ofn.hInstance]
             mov     [wcls.hInstance], eax
             invoke  LoadCursor, eax, IDC_ARROW
             mov     [wcls.hCursor], eax
             mov     [wcls.lpfnWndProc], SWFMainProc
             mov     [wcls.lpszClassName], swcn
             invoke  RegisterClass, wcls
             test    eax, eax
             jz      wberr

             invoke  GetSystemMetrics, SM_CXSCREEN
             sub     eax, [cla]
             shr     eax, 1
             mov     [clx], eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             sub     eax, [clb]
             shr     eax, 1
             mov     [xtrb], eax
             xor     ecx, ecx
             mov     ecx, WS_VISIBLE
             or      ecx, WS_SYSMENU

             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 100h
             jz      minbtn2

             or      ecx, WS_DLGFRAME
             jmp     reszw2
    minbtn2:

             or      ecx, WS_MINIMIZEBOX

    reszw2:
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jz      swfcw3

             or      ecx, WS_THICKFRAME
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 100h
             jnz     swfcw3

             or      ecx, WS_MAXIMIZEBOX

    swfcw3:
             invoke  CreateWindowEx,\
                     0,\
                     swcn,\
                     0,\
                     ecx,\
                     [clx],\
                     [xtrb],\
                     [cla],\
                     [clb],\
                     [ofn.hwndOwner],\
                     0,\
                     [wcls.hInstance],\
                     0

             test    eax, eax
             jz      wberr

             mov     [clx], eax
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 04h
             jz      noflat2

             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 1000h
             jz      noxlay

             mov     ecx, WS_EX_LAYERED

    noxlay:
             invoke  SetWindowLong, [clx], GWL_EXSTYLE, ecx
             mov     ecx, WS_VISIBLE
             mov     ax, [bdw]
             and     eax, 1000h
             jz      popupw

             xor     ecx, ecx

    popupw:
             or      ecx, WS_POPUP
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jz      notf2

             or      ecx, WS_THICKFRAME

    notf2:
             invoke  SetWindowLong, [clx], GWL_STYLE, ecx
             invoke  SetWindowPos,\
                     [clx],\
                     HWND_TOP,\
                     0,\
                     0,\
                     0,\
                     0,\
                     SWP_NOSIZE or SWP_NOMOVE or SWP_FRAMECHANGED

    noflat2:
             cmp     byte [smp], 0
             je      wbmod2

             invoke  SetWindowText, [clx], [smp]

    wbmod2:
             cmp     [bmod], 1
             jne     swfgm

             invoke  EnableWindow, [ofn.hwndOwner], FALSE

    swfgm:
             invoke  GetMessage, msg, 0, 0, 0
             test    eax, eax
             jz      eofswf

             invoke  TranslateMessage, msg
             cmp     [msg.message], WM_KEYUP
             jne     dpm2

             cmp     [msg.wParam], VK_ESCAPE
             jne     dpm2

             mov     eax, [nlpp]
             and     eax, 01h
             jnz     dpm2

             invoke  SendMessage, [clx], WM_CLOSE, 0, 0

    dpm2:
             invoke  DispatchMessage, msg
             jmp     swfgm

    eofswf:
             cmp     [bmod], 1
             jne     flib2

             invoke  EnableWindow, [ofn.hwndOwner], TRUE

    flib2:
             cmp     [argv], 0
             je      flib3

             invoke  SysFreeString, [argv]

    flib3:
             invoke  FreeLibrary, [env]
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--base64'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [tmp], 0
             mov     [xtr], 0
             mov     [cnt], 0
             mov     [lpt], 0
             mov     [pout], 0
             mov     [bdat], 0

    b64a:
             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/encode'
             test    eax, eax
             jnz     b64d

             mov     [bdat], 1
             jmp     b64e

    b64d:
             invoke  lstrcmpi, dword [esi], '/decode'
             test    eax, eax
             jnz     b64o

             mov     [bdat], 2
             jmp     b64e

    b64o:
             invoke  lstrcmpi, dword [esi], sout
             test    eax, eax
             jnz     b64f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [xtr], eax
             jmp     b64e

    b64f:
             invoke  lstrcmpi, dword [esi], sfle
             test    eax, eax
             jnz     b64x

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             stdcall fread, dword [esi]
             test    eax, eax
             jz      error

             cmp     eax, -1
             je      error

             mov     [cnt], eax
             mov     eax, [buff]
             mov     [tmp], eax
             jmp     b64e

    b64x:
             mov     eax, dword [esi]
             mov     [tmp], eax

    b64e:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     b64a

             mov     eax, [tmp]
             cmp     byte [eax], 0
             je      error

             cmp     [bdat], 0
             je      error

             cmp     [bdat], 2
             je      b64df

             cmp     [cnt], 0
             jne     b64ef

             invoke lstrlen, eax
             mov    [cnt], eax

    b64ef:
             invoke  CryptBinaryToString,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64 or CRYPT_STRING_NOCRLF,\
                     0,\
                     lpt,\

             test    eax, eax
             jz      error

             mov     eax, [lpt]
             inc     eax
             cinvoke malloc, eax
             test    eax, eax
             jz      error

             mov     [pout], eax
             invoke  CryptBinaryToString,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64 or CRYPT_STRING_NOCRLF,\
                     [pout],\
                     lpt,\

             cmp     [xtr], 0
             je      b64p
    b64s:
             stdcall fwrite, [xtr], [pout], [lpt]
             push    eax
             cinvoke free, [pout]
             pop     eax
             cmp     eax, -1
             je      error
             jmp     exit

    b64p:
             cinvoke printf, [pout]
             cinvoke free, [pout]
             jmp     exit

    b64df:
             invoke  CryptStringToBinary,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64,\
                     0,\
                     lpt,\
                     0,\
                     0

             test    eax, eax
             jz      error

             mov     eax, [lpt]
             inc     eax
             cinvoke malloc, eax
             test    eax, eax
             jz      error

             mov     [pout], eax
             invoke  CryptStringToBinary,\
                     [tmp],\
                     [cnt],\
                     CRYPT_STRING_BASE64,\
                     [pout],\
                     lpt,\
                     0,\
                     0

             cmp     [xtr], 0
             jne     b64s

             mov     eax, [pout]
             add     eax, [lpt]
             mov     byte [eax], 0
             jmp     b64p

    @@:
             invoke  lstrcmpi, dword [esi], '--hash'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [xtr], 0

    hfa:
             add     esi, 4
             invoke  lstrcmpi, dword [esi], sfle
             test    eax, eax
             jnz     hfb

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             stdcall fread, dword [esi]
             test    eax, eax
             jz      error

             cmp     eax, -1
             je      error

             mov     [cnt], eax
             mov     eax, [buff]
             mov     [tmp], eax
             jmp     hfi

    hfb:
             invoke  lstrcmpi, dword [esi], '/md5'
             test    eax, eax
             jnz     hfc

             mov     [xtr], CALG_MD5
             jmp     hfi

    hfc:
             invoke  lstrcmpi, dword [esi], '/sha1'
             test    eax, eax
             jnz     hfd

             mov     [xtr], CALG_SHA1
             jmp     hfi

    hfd:
             invoke  lstrcmpi, dword [esi], '/sha256'
             test    eax, eax
             jnz     hff

             mov     [xtr], CALG_SHA256
             jmp     hfi

    hff:
             invoke  lstrcmpi, dword [esi], '/sha384'
             test    eax, eax
             jnz     hfg

             mov     [xtr], CALG_SHA384
             jmp     hfi

    hfg:
             invoke  lstrcmpi, dword [esi], '/sha512'
             test    eax, eax
             jnz     hfh

             mov     [xtr], CALG_SHA512
             jmp     hfi

    hfh:
             mov     eax, dword [esi]
             mov     [tmp], eax
             invoke  lstrlen, eax
             mov     [cnt], eax

    hfi:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     hfa

             cmp     [cnt], 1
             jl      error

             cmp     [xtr], 0
             je      error

             invoke  CryptAcquireContext,\
                     lpt,\
                     0,\
                     0,\
                     PROV_RSA_AES,\
                     CRYPT_VERIFYCONTEXT

             test    eax, eax
             jz      error

             invoke  CryptCreateHash,\
                     [lpt],\
                     [xtr],\
                     0,\
                     0,\
                     aux

             test    eax, eax
             jnz     chd

    hashe:
             invoke  CryptReleaseContext, [lpt], 0
             jmp     error

    chd:
             invoke  CryptHashData,\
                     [aux],\
                     [tmp],\
                     [cnt],\
                     0

             test    eax, eax
             jnz     cghp

    hashe2:
             invoke  CryptDestroyHash, [aux]
             jmp     hashe

    cghp:
             mov     [cnt], 4
             invoke  CryptGetHashParam,\
                     [aux],\
                     HP_HASHSIZE,\
                     xtrb,\
                     cnt,\
                     0

             test    eax, eax
             jz      hashe2

             invoke  CryptGetHashParam,\
                     [aux],\
                     HP_HASHVAL,\
                     smbf,\
                     xtrb,\
                     0

             test    eax, eax
             jz      hashe2

             mov     eax, smbf

    hvprn:
             cmp     [xtrb], 0
             je      cdhnr

             push    eax
             xor     ecx, ecx
             mov     cl, byte [eax]
             cinvoke printf, '%02X', ecx
             pop     eax
             inc     eax
             dec     [xtrb]
             jmp     hvprn

    cdhnr:
             invoke  CryptDestroyHash, [aux]
             invoke  CryptReleaseContext, [lpt], 0
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--screenshot'
             test    eax, eax
             jnz     @f

             invoke  GetDC, 0
             test    eax, eax
             jz      error

             mov     [tmp], eax
             invoke  CreateCompatibleDC, eax
             test    eax, eax
             jnz     ccbm

    sser:
             invoke  ReleaseDC, 0, [tmp]
             jmp     error

    ccbm:
             mov     [xtr], eax
             invoke  GetSystemMetrics, SM_CXSCREEN
             mov     [cla], eax
             invoke  GetSystemMetrics, SM_CYSCREEN
             mov     [clb], eax
             invoke  CreateCompatibleBitmap, [tmp], [cla], [clb]
             test    eax, eax
             jnz     sbmo

    ccbe:
             invoke  DeleteDC, [xtr]
             jmp     sser

    sbmo:
             mov     [lpt], eax
             invoke  SelectObject, [xtr], eax
             mov     [pout], eax
             invoke  BitBlt, [xtr], 0, 0, [cla], [clb], [tmp], 0, 0, SRCCOPY
             push    eax
             invoke  SelectObject, [xtr], [pout]
             pop     eax
             test    eax, eax
             jz      sser2

             invoke  DeleteDC, [xtr]
             invoke  ReleaseDC, 0, [tmp]

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jne     sbmp

             invoke  OpenClipboard, 0
             test    eax, eax
             jz      sser2

             invoke  EmptyClipboard
             invoke  SetClipboardData, CF_BITMAP, [lpt]
             invoke  CloseClipboard
             jmp     rbmp

    sbmp:
             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             jz      error

             mov     [xtr], eax
             invoke  PathFindExtension, eax
             mov     [aux], eax
             invoke  lstrcmpi, [aux], bmp
             test    eax, eax
             jnz     .jpg2

             mov     eax, CLSID_BMP_ENCODER
             mov     [riid], eax
             jmp     i2p2

    .jpg2:
             invoke  lstrcmpi, [aux], jpg
             test    eax, eax
             jnz     .gif2

             mov     eax, CLSID_JPG_ENCODER
             mov     [riid], eax
             jmp     i2p2

    .gif2:
             invoke  lstrcmpi, [aux], gif
             test    eax, eax
             jnz     .png2

             mov     eax, CLSID_GIF_ENCODER
             mov     [riid], eax
             jmp     i2p2

    .png2:
             invoke  lstrcmpi, [aux], png
             test    eax, eax
             jnz     sser2

             mov     eax, CLSID_PNG_ENCODER
             mov     [riid], eax

    i2p2:
             invoke  LoadLibrary, gdll
             test    eax, eax
             jz      sser2

             mov     [aux], eax
             invoke  GetProcAddress, eax, gsup
             test    eax, eax
             jz      sser3

             pushd   0
             pushd   gdis
             pushd   gdit
             call    eax
             test    eax, eax
             jnz     sser3

             invoke  GetProcAddress, [aux], 'GdipCreateBitmapFromHBITMAP'
             test    eax, eax
             jz      sser4

             pushd   xtrb
             pushd   0
             pushd   [lpt]
             call    eax
             test    eax, eax
             jnz     sser4

             invoke  lstrlen, [xtr]
             mov     [cnt], eax
             invoke  SysAllocStringLen, 0, [cnt]
             test    eax, eax
             jz      sser5

             mov     [pout], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [xtr],\
                     [cnt],\
                     eax,\
                     [cnt]
             invoke  GetProcAddress, [aux], gsif
             test    eax, eax
             jz      sser6

             pushd   0
             pushd   [riid]
             pushd   [pout]
             pushd   [xtrb]
             call    eax
             test    eax, eax
             jnz     sser6

             invoke  SysFreeString, [pout]
             invoke  GetProcAddress, [aux], gdim
             test    eax, eax
             jz      sser4

             pushd   [xtrb]
             call    eax
             call    gpsd
             invoke  FreeLibrary, [aux]

    rbmp:
             invoke  DeleteObject, [lpt]
             jmp     exit

    sser6:
             invoke  SysFreeString, [pout]

    sser5:
             invoke  GetProcAddress, [aux], gdim
             test    eax, eax
             jz      sser4

             pushd   [xtrb]
             call    eax

    sser4:
             call    gpsd

    sser3:
             invoke  FreeLibrary, [aux]

    sser2:
             invoke  DeleteObject, [lpt]
             jmp     error

    @@:
             invoke  lstrcmpi, dword [esi], '--image2'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [tmp], eax
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             cmp     byte [eax], 0
             je      error

             mov     [xtr], eax
             invoke  LoadLibrary, gdll
             test    eax, eax
             jz      error

             mov     [lpt], eax
             invoke  GetProcAddress, eax, gsup
             test    eax, eax
             jz      gperr2

             pushd   0
             pushd   gdis
             pushd   gdit
             call    eax
             test    eax, eax
             jz      gcimgf

    gperr2:
             invoke  FreeLibrary, [lpt]
             jmp     error

    gcimgf:
             invoke  lstrlen, [tmp]
             mov     [cnt], eax
             invoke  SysAllocStringLen, 0, [cnt]
             test    eax, eax
             jz      gpesd

             mov     [aux], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     [cnt],\
                     eax,\
                     [cnt]
             invoke  GetProcAddress, [lpt], 'GdipCreateBitmapFromFile'
             test    eax, eax
             jnz     gcbff

    gpefs:
             invoke  SysFreeString, [aux]

    gpesd:
             cmp     [xtrb], 0
             je      dimg

             invoke  GetProcAddress, [lpt], gdim
             test    eax, eax
             jz      dimg

             pushd   [xtrb]
             call    eax
    dimg:
             call    gpsd
             jmp     gperr2

    gcbff:
             pushd   xtrb
             pushd   [aux]
             call    eax
             test    eax, eax
             jnz     gpefs

             invoke  SysFreeString, [aux]
             invoke  PathFindExtension, [xtr]
             mov     [aux], eax
             invoke  lstrcmpi, [aux], bmp
             test    eax, eax
             jnz     .jpg

             mov     eax, CLSID_BMP_ENCODER
             mov     [riid], eax
             jmp     i2p

    .jpg:
             invoke  lstrcmpi, [aux], jpg
             test    eax, eax
             jnz     .gif

             mov     eax, CLSID_JPG_ENCODER
             mov     [riid], eax
             jmp     i2p

    .gif:
             invoke  lstrcmpi, [aux], gif
             test    eax, eax
             jnz     .png

             mov     eax, CLSID_GIF_ENCODER
             mov     [riid], eax
             jmp     i2p

    .png:
             invoke  lstrcmpi, [aux], png
             test    eax, eax
             jnz     gpesd

             mov     eax, CLSID_PNG_ENCODER
             mov     [riid], eax

    i2p:
            invoke  lstrlen, [xtr]
            cmp     eax, 4
            jg      gsi2f

            invoke  lstrcpy, smbf, [tmp]
            invoke  PathFindExtension, smbf
            test    eax, eax
            jz      pxcat

            mov     byte [eax], 0

    pxcat:
            invoke  lstrcat, smbf, [xtr]
            mov     ebx, smbf
            mov     [xtr], ebx
            invoke  lstrlen, ebx

    gsi2f:
             mov     [cnt], eax
             invoke  SysAllocStringLen, 0, [cnt]
             test    eax, eax
             jz      gpesd

             mov     [aux], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [xtr],\
                     [cnt],\
                     eax,\
                     [cnt]

             invoke  GetProcAddress, [lpt], gsif
             test    eax, eax
             jz      gpefs

             pushd   0
             pushd   [riid]
             pushd   [aux]
             pushd   [xtrb]
             call    eax
             test    eax, eax
             jnz     gpefs


             invoke  SysFreeString, [aux]
             invoke  GetProcAddress, [lpt], gdim
             test    eax, eax
             jz      dimg

             pushd   [xtrb]
             call    eax
             call    gpsd
             invoke  FreeLibrary, [lpt]
             jmp     exit

    @@:
             invoke  lstrcmpi, dword [esi], '--exec'
             test    eax, eax
             jnz     @f

             invoke  RtlZeroMemory, sinf, sizeof.STARTUPINFO
             mov     [tmp], 0
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      exerr

             mov     [lpt], TRUE
             mov     [xtr], 0
             mov     [bdat], 0
             mov     eax, dword [esi]
             mov     [spbx], eax
             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/partner'
             test    eax, eax
             jnz     dtchd

             mov     [bdat], 1
             mov     eax, dword [esi]
             mov     [spbx], eax
             jnz     getcln

    dtchd:
             invoke  lstrcmpi, dword [esi], '/detached'
             test    eax, eax
             jnz     getcln

             mov     eax, dword [esi]
             mov     [spbx], eax
             mov     [lpt], FALSE
             mov     eax, CREATE_DEFAULT_ERROR_MODE
             or      eax, DETACHED_PROCESS
             mov     [xtr], eax

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      exerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/console'
             test    eax, eax
             jnz     getcln

             mov     eax, dword [esi]
             mov     [spbx], eax
             mov     eax, CREATE_DEFAULT_ERROR_MODE
             or      eax, CREATE_NEW_CONSOLE
             mov     [xtr], eax

    getcln:
             invoke  GetCommandLine
             mov     ebx, eax
             mov     ecx, [appn]
             cinvoke lstrlen, dword [ecx]
             add     ebx, eax
             cinvoke strstr, ebx, [spbx]
             mov     ebx, eax
             invoke  lstrlen, [spbx]
             inc     eax
             add     ebx, eax

    decspc:
             cmp     byte [ebx], 0
             je      exerr

             cmp     byte [ebx], ' '
             jne     cproc

             inc     ebx
             jmp     decspc

    cproc:
             mov     [sinf.cb], sizeof.STARTUPINFO
             invoke  CreateProcess,\
                     0,\
                     ebx,\
                     0,\
                     0,\
                     [lpt],\
                     [xtr],\
                     0,\
                     0,\
                     sinf,\
                     pinf

             test    eax, eax
             jz      exerr

             mov     [cnt], 0
             cmp     [lpt], FALSE
             je      eofexec

             cmp     [bdat], 1
             jne     waitp

             invoke  SetConsoleCtrlHandler, ConsoleCtlHandle, TRUE

    waitp:
             invoke  WaitForSingleObject, [pinf.hProcess], INFINITE
             invoke  GetExitCodeProcess, [pinf.hProcess], cnt


             cmp     [bdat], 1
             jne     eofexec

             invoke  SetConsoleCtrlHandler, ConsoleCtlHandle, FALSE

    eofexec:
             invoke  CloseHandle, [pinf.hProcess]
             invoke  CloseHandle, [pinf.hThread]
             mov     eax, [cnt]
             jmp     xret

    exerr:
             mov     eax, LONG_MAX
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--shell'
             test    eax, eax
             jnz     @f

             invoke  RtlZeroMemory, sei, sizeof.SHELLEXECUTEINFO
             mov     [sei.cbSize], sizeof.SHELLEXECUTEINFO
             mov     [sei.nShow], SW_SHOWNORMAL

    shloop:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      shell

             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/directory'
             test    eax, eax
             jnz     swait

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             mov     eax, dword [esi]
             mov     [sei.lpDirectory], eax
             jmp     shloop

    swait:
             invoke  lstrcmpi, dword [esi], '/wait'
             test    eax, eax
             jnz     wmax

             mov     [sei.fMask], SEE_MASK_NOCLOSEPROCESS
             jmp     shloop

    wmax:
             invoke  lstrcmpi, dword [esi], smax
             test    eax, eax
             jnz     wmin

             mov     [sei.nShow], SW_SHOWMAXIMIZED
             jmp     shloop

    wmin:
             invoke  lstrcmpi, dword [esi], smin
             test    eax, eax
             jnz     whide

             mov     [sei.nShow], SW_MINIMIZE
             jmp     shloop

    whide:
             invoke  lstrcmpi, dword [esi], '/hide'
             test    eax, eax
             jnz     verb

             mov     [sei.nShow], SW_HIDE
             jmp     shloop

    verb:
             invoke  lstrcmpi, dword [esi], 'edit'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], 'open'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], 'print'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], 'find'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], 'explore'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], 'runas'
             test    eax, eax
             jz      defvrb

             invoke  lstrcmpi, dword [esi], prn2
             test    eax, eax
             jz      defvrb

             mov     eax, dword [esi]

             cmp     [sei.lpFile], 0
             jne     shp

             mov     [sei.lpFile], eax
             jmp     shloop

    shp:
             mov     [sei.lpParameters], eax
             jmp     shloop

    defvrb:
             mov     eax, dword [esi]
             mov     [sei.lpVerb], eax
             jmp     shloop

    shell:
             invoke  lstrcmpi, [sei.lpVerb], prn2
             test    eax, eax
             jnz     shcf

             mov     eax, [sei.lpParameters]
             cmp     byte [eax], 0
             je      shcf

             cinvoke sprintf, smbf, '"%s"', [sei.lpParameters]
             mov     [sei.lpParameters], smbf

    shcf:
             invoke  CoInitializeEx,\
                     0,\
                     COINIT_APARTMENTTHREADED or COINIT_DISABLE_OLE1DDE

             mov     eax, [bin.hwndOwner]
             mov     [sei.hwnd], eax
             invoke  ShellExecuteEx, sei
             test    eax, eax
             je      sherr

             mov     eax, [sei.hInstApp]
             cmp     eax, ERROR_FILE_NOT_FOUND
             je      sherr

             cmp     eax, ERROR_PATH_NOT_FOUND
             je      sherr

             cmp     eax, ERROR_BAD_FORMAT
             je      sherr

             cmp     eax, SE_ERR_ACCESSDENIED
             je      sherr

             cmp     eax, SE_ERR_ASSOCINCOMPLETE
             je      sherr

             cmp     eax, SE_ERR_DDEBUSY
             je      sherr

             cmp     eax, SE_ERR_DDEFAIL
             je      sherr

             cmp     eax, SE_ERR_DDETIMEOUT
             je      sherr

             cmp     eax, SE_ERR_DLLNOTFOUND
             je      sherr

             cmp     eax, SE_ERR_NOASSOC
             je      sherr

             cmp     eax, SE_ERR_OOM
             je      sherr

             cmp     eax, SE_ERR_SHARE
             je      sherr

             cmp     [sei.fMask], SEE_MASK_NOCLOSEPROCESS
             je      shwait

             invoke  CoUninitialize
             jmp     exit

    shwait:
             invoke  WaitForSingleObject, [sei.hProcess], INFINITE
             invoke  CloseHandle, [sei.hProcess]
             invoke  GetExitCodeProcess, [sei.hProcess], cnt
             invoke  CoUninitialize
             mov     eax, [cnt]
             jmp     xret

    sherr:
             invoke  CoUninitialize
             mov     eax, LONG_MAX
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--rundll'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rderr

             add     esi, 4
             invoke  LoadLibrary, dword [esi]
             test    eax, eax
             jz      rderr

             mov     [tmp], eax
             mov     [spbx], szfa

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rderr

             add     esi, 4
             mov     [bdat], 0

    dllargs:
             invoke  lstrcmpi, dword [esi], '/cdecl'
             test    eax, eax
             jnz     retdbl

             xor     eax, eax
             mov     al, [bdat]
             or      eax, 01h
             mov     [bdat], al
             jmp     kdllarg

    retdbl:
             invoke  lstrcmpi, dword [esi], '/float'
             test    eax, eax
             jnz     dllfmt

             xor     eax, eax
             mov     al, [bdat]
             or      eax, 20h
             mov     [bdat], al
             jmp     kdllarg

    dllfmt:
             invoke  lstrcmpi, dword [esi], sfmt
             test    eax, eax
             jnz     retstr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rderr

             add     esi, 4
             cmp     byte [esi], 0
             jz      rderr

             mov     eax, dword [esi]
             mov     [spbx], eax
             jmp     kdllarg

    retstr:
             invoke  lstrcmpi, dword [esi], '/string'
             test    eax, eax
             jnz     ldproc

             xor     ebx, ebx
             mov     bl, [bdat]
             mov     eax, 20h
             not     eax
             and     eax, ebx
             or      eax, 10h
             mov     [bdat], al

    kdllarg:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rderr

             add     esi, 4
             jmp     dllargs

    ldproc:
             invoke  GetProcAddress, [tmp], dword [esi]
             test    eax, eax
             jz      rderr

             mov     [bcnt], 0
             mov     [xtrb], eax
             mov     ebx, [argc]
             mov     [cnt], ebx
             sub     ebx, [aux]
             imul    ebx, 4
             add     esi, ebx
             mov     [xtr], 0
             xor     ecx, ecx

    params:
             dec     [cnt]
             mov     ecx, [cnt]
             cmp     ecx, [aux]
             je      callp

             sub     esi, 4
             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             jne     addprm

             stdcall s2f, dword [esi], 3
             cmp     eax, LONG_MAX
             je      addstr

             inc     [bcnt]
             cmp     [bcnt], 2
             jg      rderr
             je      jdbl

             fstp    qword [dbla]
             pushd   dword [dbla + 4]
             mov     eax, dword [dbla]
             jmp     edbl

    jdbl:
             fstp    qword [dblb]
             pushd   dword [dblb + 4]
             mov     eax, dword [dblb]

    edbl:
             add     [xtr], 4
             jmp     addprm

    addstr:
             mov     eax, dword [esi]

    addprm:
             pushd   eax
             add     [xtr], 4
             jmp     params

    callp:
             mov     eax, [xtrb]
             call    eax
             push    eax

             xor     eax, eax
             mov     al, [bdat]
             and     eax, 01h
             je      rdllret

             add     esp, [xtr]

    rdllret:
             pop     eax
             cmp     [tmp], 0
             je      rproc

             push    eax
             invoke  FreeLibrary, [tmp]
             pop     eax

    rproc:
             push    eax
             xor     eax, eax
             mov     al, [bdat]
             and     eax, 20h
             je      prnstr

             fstp    qword [dbla]
             cinvoke printf, [spbx], dword [dbla], dword [dbla + 4]
             jmp     retval

    prnstr:
             mov     al, [bdat]
             and     eax, 10h
             je      retval

             pop     eax
             push    eax
             invoke  lstrlen, eax
             pop     ebx
             push    ebx
             invoke  WriteFile, [stdo], ebx, eax, 0, 0

    retval:
             pop     eax
             jmp     xret

    rderr:
             mov     eax, LONG_MAX
             jmp     rdllret

    @@:
             invoke  lstrcmpi, dword [esi], '--key'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             push    esi
             push    edi
             mov     [xtrb], 1
             mov     edi, dword [esi]
             jmp     bofcl

    jmpkm:
             pop     edi
             pop     esi
             mov     [tmp], 0
             mov     [bdat], 0

    argloop:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      rci

             add     esi, 4
             cmp     byte [esi], 0
             jz      argloop

             invoke  lstrcmpi, dword [esi], '/noecho'
             test    eax, eax
             jnz     down

             xor     eax, eax
             mov     al, [bdat]
             or      eax, 01h
             mov     [bdat], al
             jmp     argloop
    down:
             invoke  lstrcmpi, dword [esi], '/down'
             test    eax, eax
             jnz     keys

             xor     eax, eax
             mov     al, [bdat]
             or      eax, 10h
             mov     [bdat], al
             jmp     argloop

    keys:
             mov     eax, dword [esi]
             mov     [tmp], eax
             jmp     argloop

    rci:
             invoke  RtlZeroMemory, ir, sizeof.INPUT_RECORD
             invoke  ReadConsoleInput, [stdi], ir, 1, cnt
             cmp     [cnt], 1
             jne     rci

             cmp     [ir.EventType], KEY_EVENT
             jne     rci

             xor     eax, eax
             mov     al, [bdat]
             and     eax, 10h
             jne     nodown

             cmp     [ir.KeyEvent.bKeyDown], 10000h
             je      rci

    nodown:
             cmp     [tmp], 0
             je      eofkey

             mov     edi, [tmp]
             xor     eax, eax
             mov     al,  byte [ir.KeyEvent.AsciiChar]
             dec     edi

    cmpkey:
             inc     edi
             cmp     byte [edi], 0
             je      rci

             cmp     byte [edi], '['
             jne     novk

             mov     edx, edi
             inc     edx

    vkloop:
             inc     edi
             cmp     byte [edi], 0
             je      rci

             cmp     byte [edi], ']'
             jne     vkloop

             cmp     edx, edi
             je      cmpkey

             mov     ecx, edi
             sub     ecx, edx
             inc     ecx

             push    eax
             invoke  lstrcpyn, [buff], edx, ecx
             invoke  lstrcmpi, [buff], 'esc'
             test    eax, eax
             jnz     noescvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_ESCAPE
             je      eofkey
             jmp     cmpkey

    noescvk:
             invoke  lstrcmpi, [buff], 'enter'
             test    eax, eax
             jz      entervk

             invoke  lstrcmpi, [buff], 'return'
             test    eax, eax
             jnz     noretvk

    entervk:
             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_RETURN
             je      eofkey
             jmp     cmpkey

    noretvk:
             invoke  lstrcmpi, [buff], 'left'
             test    eax, eax
             jnz     nolvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_LEFT
             je      eofkey
             jmp     cmpkey

    nolvk:
             invoke  lstrcmpi, [buff], 'down'
             test    eax, eax
             jnz     nodvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_DOWN
             je      eofkey
             jmp     cmpkey

    nodvk:
             invoke  lstrcmpi, [buff], 'right'
             test    eax, eax
             jnz     nortvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_RIGHT
             je      eofkey
             jmp     cmpkey

    nortvk:
             invoke  lstrcmpi, [buff], 'up'
             test    eax, eax
             jnz     noupvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_UP
             je      eofkey
             jmp     cmpkey

    noupvk:
             invoke  lstrcmpi, [buff], 'f1'
             test    eax, eax
             jnz     nof1vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F1
             je      eofkey
             jmp     cmpkey

    nof1vk:
             invoke  lstrcmpi, [buff], 'f2'
             test    eax, eax
             jnz     nof2vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F2
             je      eofkey
             jmp     cmpkey

    nof2vk:
             invoke  lstrcmpi, [buff], 'f3'
             test    eax, eax
             jnz     nof3vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F3
             je      eofkey
             jmp     cmpkey

    nof3vk:
             invoke  lstrcmpi, [buff], 'f4'
             test    eax, eax
             jnz     nof4vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F4
             je      eofkey
             jmp     cmpkey

    nof4vk:
             invoke  lstrcmpi, [buff], 'f5'
             test    eax, eax
             jnz     nof5vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F5
             je      eofkey
             jmp     cmpkey

    nof5vk:
             invoke  lstrcmpi, [buff], 'f6'
             test    eax, eax
             jnz     nof6vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F6
             je      eofkey
             jmp     cmpkey

    nof6vk:
             invoke  lstrcmpi, [buff], 'f7'
             test    eax, eax
             jnz     nof7vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F7
             je      eofkey
             jmp     cmpkey

    nof7vk:
             invoke  lstrcmpi, [buff], 'f8'
             test    eax, eax
             jnz     nof8vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F8
             je      eofkey
             jmp     cmpkey

    nof8vk:
             invoke  lstrcmpi, [buff], 'f9'
             test    eax, eax
             jnz     nof9vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F9
             je      eofkey
             jmp     cmpkey

    nof9vk:
             invoke  lstrcmpi, [buff], 'f10'
             test    eax, eax
             jnz     nof10vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F10
             je      eofkey
             jmp     cmpkey

    nof10vk:
             invoke  lstrcmpi, [buff], 'f11'
             test    eax, eax
             jnz     nof11vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F11
             je      eofkey
             jmp     cmpkey

    nof11vk:
             invoke  lstrcmpi, [buff], 'f12'
             test    eax, eax
             jnz     nof12vk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_F12
             je      eofkey
             jmp     cmpkey

    nof12vk:
             invoke  lstrcmpi, [buff], 'back'
             test    eax, eax
             jnz     nobckvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_BACK
             je      eofkey
             jmp     cmpkey

    nobckvk:
             invoke  lstrcmpi, [buff], 'insert'
             test    eax, eax
             jnz     noinsvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_INSERT
             je      eofkey
             jmp     cmpkey

    noinsvk:
             invoke  lstrcmpi, [buff], 'delete'
             test    eax, eax
             jnz     nodelvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_DELETE
             je      eofkey
             jmp     cmpkey

    nodelvk:
             invoke  lstrcmpi, [buff], 'home'
             test    eax, eax
             jnz     nohovk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_HOME
             je      eofkey
             jmp     cmpkey

    nohovk:
             invoke  lstrcmpi, [buff], 'end'
             test    eax, eax
             jnz     noendvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_END
             je      eofkey
             jmp     cmpkey

    noendvk:
             invoke  lstrcmpi, [buff], 'prior'
             test    eax, eax
             jnz     noprivk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_PRIOR
             je      eofkey
             jmp     cmpkey

    noprivk:
             invoke  lstrcmpi, [buff], 'next'
             test    eax, eax
             jnz     nonxtvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_NEXT
             je      eofkey
             jmp     cmpkey

    nonxtvk:
             invoke  lstrcmpi, [buff], 'tab'
             test    eax, eax
             jnz     notabvk

             pop     eax
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_TAB
             je      eofkey
             jmp     cmpkey

    notabvk:
             pop     eax
             jmp     cmpkey

    novk:
             invoke  CharLower, eax
             cmp     byte [edi], al
             je      eofkey

             invoke  CharUpper, eax
             cmp     byte [edi], al
             jne     cmpkey

    eofkey:
             xor     eax, eax
             mov     al, [bdat]
             and     eax, 01h
             jne     noecho

             xor     eax, eax
             mov     al, byte [ir.KeyEvent.AsciiChar]
             cmp     eax, 31
             jg      prnchr

             mov     eax, [buff]
             cmp     byte [eax], 0
             je      noecho

             invoke  CharUpper, [buff]
             cinvoke printf, <'[%s]', 0Ah, 0Dh, 0>, [buff]
             jmp     noecho

    prnchr:
             invoke  CharUpper, eax
             cinvoke printf, <'%c', 0Ah, 0Dh, 0>, eax

    noecho:
             xor     eax, eax
             mov     al, byte [ir.KeyEvent.wVirtualKeyCode]
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--cursor'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], get
             test    eax, eax
             jnz     nogc

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], cox
             cmp     eax, 0
             jne     nogcx

             xor     eax, eax
             mov     ax, [csbi.dwCursorPosition.X]
             jmp     xret

    nogcx:
             invoke  lstrcmpi, dword [esi], coy
             test    eax, eax
             jnz     xerr

             xor     eax, eax
             mov     ax, [csbi.dwCursorPosition.Y]
             jmp     xret

    nogc:
             invoke  lstrcmpi, dword [esi], set
             test    eax, eax
             jnz     xerr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], cox
             cmp     eax, 0
             jne     noscx

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     [csbi.dwCursorPosition.X], ax
             jmp     sccp

    noscx:
             invoke  lstrcmpi, dword [esi], coy
             test    eax, eax
             jnz     xerr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     [csbi.dwCursorPosition.Y], ax

    sccp:
             invoke  SetConsoleCursorPosition,\
                     [stdo],\
                     dword [csbi.dwCursorPosition]

             test    eax, eax
             jnz     exit

    xerr:
             mov     eax, -1
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], '--window'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], '/center'
             test    eax, eax
             jnz     nocenter

             invoke  GetSystemMetrics, SM_CXSCREEN
             cdq
             sar     eax, 1
             push    eax
             mov     eax, [cwr.left]
             sub     [cwr.right], eax
             mov     eax, [cwr.right]
             cdq
             sar     eax, 1
             pop     ebx
             sub     ebx, eax
             mov     [cwr.left], ebx

             invoke  GetSystemMetrics, SM_CYSCREEN
             cdq
             sar     eax, 1
             push    eax
             mov     eax, [cwr.top]
             sub     [cwr.bottom], eax
             mov     eax, [cwr.bottom]
             cdq
             sar     eax, 1
             pop     ebx
             sub     ebx, eax
             mov     [cwr.top], ebx
             jmp     scwi

    nocenter:
             invoke  lstrcmpi, dword [esi], get
             test    eax, eax
             jnz     nogw

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], cox
             test    eax, eax
             jnz     nogwx

             mov     eax, [cwr.left]
             jmp     xret

    nogwx:
             invoke  lstrcmpi, dword [esi], coy
             test    eax, eax
             jnz     nogwy

             mov     eax, [cwr.top]
             jmp     xret

    nogwy:
             invoke  lstrcmpi, dword [esi], cow
             test    eax, eax
             jnz     nogww

             mov     eax, [cwr.right]
             sub     eax, [cwr.left]
             jmp     xret

    nogww:
             invoke  lstrcmpi, dword [esi], coh
             test    eax, eax
             jnz     xerr

             mov     eax, [cwr.bottom]
             sub     eax, [cwr.top]
             jmp     xret

    nogw:
             invoke  lstrcmpi, dword [esi], set
             test    eax, eax
             jnz     xerr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             invoke  lstrcmpi, dword [esi], cox
             test    eax, eax
             jnz     noswx

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     ecx, [cwr.left]
             sub     [cwr.right], ecx
             mov     ecx, [cwr.top]
             sub     [cwr.bottom], ecx
             mov     [cwr.left], eax
             jmp     scwi

    noswx:
             invoke  lstrcmpi, dword [esi], coy
             test    eax, eax
             jnz     noswy

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     ecx, [cwr.top]
             sub     [cwr.bottom], ecx
             mov     ecx, [cwr.left]
             sub     [cwr.right], ecx
             mov     [cwr.top], eax
             jmp     scwi

    noswy:
             invoke  lstrcmpi, dword [esi], cow
             test    eax, eax
             jnz     nosww

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     ecx, [cwr.top]
             sub     [cwr.bottom], ecx
             mov     [cwr.right], eax
             jmp     scwi

     nosww:
             invoke  lstrcmpi, dword [esi], coh
             test    eax, eax
             jnz     xerr

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             mov     ecx, [cwr.left]
             sub     [cwr.right], ecx
             mov     [cwr.bottom], eax

    scwi:
             invoke  SetWindowPos,\
                     [bin.hwndOwner],\
                     0,\
                     [cwr.left],\
                     [cwr.top],\
                     [cwr.right],\
                     [cwr.bottom],\
                     0

             test    eax, eax
             jnz     exit
             jmp     xerr

    @@:
             invoke  lstrcmpi, dword [esi], sprn
             test    eax, eax
             jz      prnf

             invoke  lstrcmpi, dword [esi], sech
             test    eax, eax
             jnz     @f

             invoke  GetCommandLine
             mov     ebx, eax
             mov     ecx, [appn]
             cinvoke lstrlen, dword [ecx]
             add     ebx, eax
             cinvoke strstr, ebx, dword [esi]
             mov     ebx, eax
             invoke  lstrlen, dword [esi]
             inc     eax
             add     ebx, eax
             mov     [bdat], 12
             mov     esi, ebx
             stdcall ftoken, ebx, 23h, 3Bh, 1
             mov     edi, esi
             jmp     bofcl

    error:
             mov     eax, 1
             jmp     xret

    @@:
             invoke  lstrcmpi, dword [esi], scmd
             test    eax, eax
             jnz     @f

             add     esi, 4
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     [bdat], 13
             mov     eax, dword [esi]
             mov     [tmp], eax
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--more'
             test    eax, eax
             jnz     @f

    margs:
             cmp     [bmre], 2
             jg      endloop

             inc     [bmre]
             add     esi, 4
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jle     eofargs

             cmp     byte [esi], 0
             jz      margs

             invoke  lstrcmpi, dword [esi], scmd
             test    eax, eax
             jz      cmdln

             invoke  lstrcmpi, dword [esi], sprn
             test    eax, eax
             jz      cmdln

             invoke  lstrcmpi, dword [esi], sech
             test    eax, eax
             jz      cmdln

             stdcall s2l, dword [esi], 1
             cmp     eax, 0
             jl      nonum

             cmp     eax, [rows]
             jl      defnlp

             mov     eax, [rows]

    defnlp:
             mov     [nlpp], eax
             jmp     margs

    nonum:
             mov     eax, dword [esi]
             mov     [smp], eax
             jmp     margs

    @@:
             invoke  lstrcmpi, dword [esi], '--color'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             add     esi, 4
             invoke  lstrcmpi, dword [esi], get
             test    eax, eax
             jnz     setclr

             mov     eax, [clx]
             jmp     xret

    setclr:
             stdcall s2l, dword [esi], 0
             invoke  SetConsoleTextAttribute, [stdo], eax
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--popup'
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [tmp], eax
             stdcall ftoken, eax, 23h, 3Bh, 1
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             mov     eax, dword [esi]
             mov     [xtrb], eax
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xerr

             add     esi, 4
             stdcall s2l, dword [esi], 2
             invoke  MessageBox,\
                     [bin.hwndOwner],\
                     [tmp],\
                     [xtrb],\
                     eax


            jmp      xret

    @@:
             invoke  lstrcmpi, dword [esi], '--open'
             test    eax, eax
             jnz     @f

             mov     [bdat], 1
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--save'
             test    eax, eax
             jnz     @f

             mov     [bdat], 2
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '--folder'
             test    eax, eax
             jnz     @f

             mov     [bdat], 3
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], sttl
             test    eax, eax
             jnz     @f

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      eofargs

             add     esi, 4
             mov     eax, dword [esi]
             mov     [ofn.lpstrTitle], eax
             mov     [bin.lpszTitle], eax
             jmp     endloop

    @@:
             invoke  lstrcmpi, dword [esi], '/filter'
             test    eax, eax
             jnz     endloop

             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      eofargs

             add     esi, 4
             mov     eax, dword [esi]
             mov     [ofn.lpstrFilter], eax
             mov     [ofn.nFilterIndex], 1

    boff:
             cmp     byte [eax], 0
             je      endloop

             cmp     byte [eax], '|'
             je      @f

             inc     eax
             jmp     boff

    @@:
             mov     byte [eax], 0
             inc     eax
             jmp     boff

    endloop:
             add     esi, 4
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             jg      cmdln

    eofargs:
             cmp     [bdat], 1
             je      @f

             cmp     [bdat], 2
             jne     folder

             invoke  GetSaveFileName, ofn
             test    eax, eax
             jz      error

             cinvoke printf, szsz, [buff]
             jmp     exit

    @@:
             mov     eax, [ofn.Flags]
             or      eax, OFN_FILEMUSTEXIST
             mov     [ofn.Flags], eax
             invoke  GetOpenFileName, ofn
             test    eax, eax
             jz      error

             cinvoke printf, szsz, [buff]
             jmp     exit

    folder:
             cmp     [bdat], 3
             jne     type

             mov     [bin.ulFlags], 200h
             invoke  CoInitialize, 0
             invoke  SHBrowseForFolder, bin
             test    eax, eax
             jz      error

             mov     [pidl], eax
             invoke  SHGetPathFromIDList, [pidl], [buff]
             invoke  CoTaskMemFree, [pidl]
             invoke  CoUninitialize
             cinvoke printf, szsz, [buff]
             jmp     exit

    type:
             cmp      [bdat], 13
             jne      error

             add     esi, 4
             stdcall fread, [tmp]
             test    eax, eax
             jz      error

             cmp     eax, -1
             je      error

    tprn:
             mov     edi, [buff]
             jmp     bofcl

    frmt:
             dec     [env]
             cmp     [env], 0
             jge     @f
             jmp     caller

    @@:
             mov     edi, [tmp]
             add     edi, [env]

    cmprnf:
             cmp     byte [edi], '%'
             jne     @f

             mov     eax, edi
             xor     ebx, ebx

    escpnf:
             dec     edi
             cmp     byte [edi], '%'
             jne     noescp

             inc     ebx
             jmp     escpnf

    noescp:
             cmp     ebx, 0
             je      desc

             xor     edx, edx
             push    eax
             mov     eax, 2
             div     ebx
             pop     eax
             cmp     edx, 0
             je      desc

             add     edi, ebx
             sub     [env], ebx
             jmp     @f

    desc:
             mov     edi, eax
             jmp     v2t

    @@:
             dec     [env]
             cmp     [env], 0
             jl      jmprnt

             dec     edi
             jmp     cmprnf

    v2t:
             inc     edi

             cmp     byte [edi], 'c'
             je      lchr

             cmp     byte [edi], 'n'
             jne     nfind

             mov     eax, dword [lpt]
             jmp     pusher

    nfind:
             cmp     byte [edi], 's'
             je      lstr

             cmp     byte [edi], 'd'
             je      a2i

             cmp     byte [edi], 'i'
             je      a2i

             cmp     byte [edi], 'p'
             je      a2i

             cmp     byte [edi], 'o'
             je      a2u

             cmp     byte [edi], 'u'
             je      a2u

             cmp     byte [edi], 'x'
             je      a2u

             cmp     byte [edi], 'X'
             je      a2u

             cmp     byte [edi], 'e'
             je      a2f

             cmp     byte [edi], 'E'
             je      a2f

             cmp     byte [edi], 'f'
             je      a2f

             cmp     byte [edi], 'g'
             je      a2f

             cmp     byte [edi], 'l'
             je      spec

             cmp     byte [edi], 'h'
             je      spec

             cmp     byte [edi], '-'
             je      spec

             cmp     byte [edi], '+'
             je      spec

             cmp     byte [edi], '#'
             je      spec

             cmp     byte [edi], '*'
             je      spec

             cmp     byte [edi], '.'
             je      spec

             cmp     byte [edi], '0'
             jge     ge
             jmp     reset

    ge:
             cmp     byte [edi], '9'
             jle     spec
             jmp     reset

    spec:
             inc     edi
             cmp     byte [edi], 0
             je      reset
             jmp     nfind

    reset:
             mov     edi, eax
             jmp     @b

    lchr:
             mov     eax, dword [esi]
             cmp     byte [eax], 57
             jg      bchr

             stdcall s2l, dword [esi], 3
             cmp     eax, LONG_MAX
             jne     pusher

    bchr:
             mov     ecx, dword [esi]
             xor     eax, eax
             mov     al, byte [ecx]
             jmp     pusher

    lstr:
             stdcall ftoken, dword [esi], 23h, 3Bh, 1
             mov     eax, dword [esi]
             jmp     pusher

    a2i:
             stdcall s2l, dword [esi], 0
             jmp     pusher

    a2u:
             cinvoke strtoul, dword [esi], 0, 0
             jmp     pusher

    a2f:
             stdcall s2f, dword [esi], 0
             cmp     [bcnt], 2
             jge     error

             cmp     [bcnt], 1
             jl      jdbl2

             fstp    qword [dbla]
             pushd   dword [dbla + 4]
             mov     eax, dword [dbla]
             jmp     edbl2

    jdbl2:
             fstp    qword [dblb]
             pushd   dword [dblb + 4]
             mov     eax, dword [dblb]

    edbl2:
             inc     [bcnt]
             add     [xtr], 4
             jmp     pusher

    prnf:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      error

             mov     ebx, dword [esi + 4]
             mov     [tmp], ebx
             stdcall ftoken, ebx, 23h, 3Bh, 1
             invoke  lstrlen, [tmp]
             mov     [env], eax
             mov     edx, [argc]
             mov     [cnt], edx
             sub     edx, [aux]
             imul    edx, 4
             add     esi, edx
             mov     [xtr], 0
    @@:
             dec     [cnt]
             mov     ecx, [cnt]
             cmp     ecx, [aux]
             jne     frmt

    jmprnt:
             mov     eax, dword [esi]

    pusher:
             pushd   eax
             add     [xtr], 4
             sub     esi, 4
             mov     ecx, [cnt]
             cmp     ecx, [aux]
             jne     @b

    caller:
             pushd   [buff]
             add     [xtr], 4
             call    [sprintf]
             add     esp, [xtr]
             mov     edi, [buff]

    bofcl:
             mov     [xtr], 0
             mov     [bdat], 0
             mov     ecx, [clx]
             mov     [cla], ecx
             mov     [clb], ecx

    txtatt:
             invoke  SetConsoleTextAttribute, [stdo], [cla]
             mov     ecx, [clb]
             mov     [cla], ecx
             lea     ebx, dword [edi]
             stdcall ftoken, ebx, 24h, 3Bh, 0
             cmp     eax, 0
             jl      @f

             mov     ecx, [clx]
             cmp     ecx, [cla]
             je      txtclr

             mov     [clb], eax
             jmp     txtatt

    txtclr:
             mov     [cla], eax
             cmp     [xtr], 0
             je      txtatt

             mov     [bdat], 1
             push    ebx
             jmp     stdout

    @@:
             mov     [bdat], 0
             push    ebx

    stdout:
             pop     ebx
             cmp     byte [ebx], 0
             je      @f

             xor     eax, eax
             mov     ax, [csbi.dwCursorPosition.Y]
             cmp     eax, [rows]
             jg      curpy

             cmp     eax, [rows]
             jl      next

             sub     [rows], eax
             jmp     next

    curpy:
             sub     eax, [rows]
             add     [rows], eax
             mov     eax, [nlpp]
             add     [rows], eax

    next:
             mov     [spbx], ebx

    writer:
             invoke  WriteFile, [stdo], ebx, 1, 0, 0
             cmp     [bsrm], 1
             je      dispwr

             invoke  GetConsoleScreenBufferInfo, [stdo], csbi
             test    eax, eax
             jz      error

             cmp     [bmre], 0
             je      dispwr

             xor     eax, eax
             mov     ax, [csbi.dwCursorPosition.Y]
             cmp     eax, [rowd]
             jl      cmprow

             cmp     byte [ebx], 0Ah
             je      newln

             xor     eax, eax
             xor     ecx, ecx
             mov     ax, [csbi.dwCursorPosition.X]
             mov     cx, [csbi.dwSize.X]
             dec     ecx
             cmp     eax, ecx
             je      newln

   swapping:
             xor     eax, eax
             mov     eax, [rowd]
             cmp     eax, [rowc]
             jle     reswap

             mov     [rowc], eax

   reswap:
             mov     eax, [rowc]

   cmprow:
             cmp     eax, [rows]
             jne     dispwr

             mov     ecx, [nlpp]
             add     [rows], ecx
             xor     ecx, ecx
             mov     cx, [csbi.wAttributes]
             cmp     ecx, [clx]
             je      more

             invoke  SetConsoleTextAttribute, [stdo], [clx]

    more:
             mov     eax, [smp]
             test    eax, eax
             jnz     nomdef

             mov     eax, mdef
             mov     [smp], eax

    nomdef:
             invoke  lstrlen, [smp]
             xor     ecx, ecx
             mov     cx, [csbi.dwSize.X]
             dec     ecx
             cmp     eax, ecx
             jle     oklen

             mov     eax, ecx
             mov     ecx, [smp]
             add     ecx, eax
             mov     byte [ecx], 0


    oklen:
             push    eax
             mov     ecx, [appn]
             cinvoke sprintf,\
                     smbf,\
                     '"%s" --key "%s" /noecho /down',\
                     dword [ecx],\
                     [smp]
             invoke  RtlZeroMemory, sinf, sizeof.STARTUPINFO
             invoke  RtlZeroMemory, pinf, sizeof.PROCESS_INFORMATION
             mov     [sinf.cb], sizeof.STARTUPINFO
             invoke  CreateProcess,\
                     0,\
                     smbf,\
                     0,\
                     0,\
                     TRUE,\
                     0,\
                     0,\
                     0,\
                     sinf,\
                     pinf
             test    eax, eax
             jz      error

             invoke  WaitForSingleObject, [pinf.hProcess], INFINITE
             invoke  GetExitCodeProcess, [pinf.hProcess], cnt
             invoke  CloseHandle, [pinf.hProcess]
             invoke  CloseHandle, [pinf.hThread]
             xor     ecx, ecx
             mov     cx, [csbi.wAttributes]
             cmp     ecx, [clx]
             je      noclr

             invoke  SetConsoleTextAttribute, [stdo], ecx

    noclr:
             invoke  GetConsoleScreenBufferInfo, [stdo], csbi
             mov     [csbi.dwCursorPosition.X], 0
             invoke  SetConsoleCursorPosition,\
                     [stdo],\
                     dword [csbi.dwCursorPosition]
             pop     eax

    rmore:
             push    eax
             invoke  WriteFile, [stdo], ' ', 1, 0, 0
             pop     eax
             dec     eax
             test    eax, eax
             jnz     rmore

             invoke  SetConsoleCursorPosition,\
                     [stdo],\
                     dword [csbi.dwCursorPosition]
             cmp     [cnt], VK_ESCAPE
             je      @f

    dispwr:
             inc     ebx
             cmp     byte [ebx], 0
             jne     writer

    @@:
             invoke  SetConsoleTextAttribute, [stdo], [clx]
             mov     ebx, [spbx]
             cmp     byte [ebx], 0
             je      @f

             cmp     [bdat], 0
             jne     txtatt

    @@:
             cmp     [xtrb], 0
             jg      jmpkm

             cmp     [cook], 0
             jne     risok

    exit:
             xor     eax, eax

    xret:
             push    eax
             cmp     [buff], 0
             je      @f

             cinvoke free, [buff]

    @@:
             pop     eax
             invoke  ExitProcess, eax

    newln:
             inc     [rowc]
             jmp     swapping

    ;---------------------------------------------------------------------------------------------------------------------------
    ; Scripting Interfaces
    ;---------------------------------------------------------------------------------------------------------------------------

    IActiveScriptSite@QueryInterface:
             mov     eax, [esp + 8]
             mov     [riid], eax
             mov     eax, [esp + 12]
             mov     [pout], eax

             invoke  IsEqualGUID, [riid], IID_IUnknown
             test    eax, eax
             jnz     iasunk

             invoke  IsEqualGUID, [riid], IID_IActiveScriptSite
             test    eax, eax
             jnz     iasunk

             invoke  IsEqualGUID, [riid], IID_IActiveScriptSiteWindow
             test    eax, eax
             jnz     iasacw
                
             invoke  IsEqualGUID, [riid], IID_IDispatch
             test    eax, eax
             jnz     iasdsp
                
             mov     eax, E_NOINTERFACE
             ret     4 * 3

    iassok:
             xor     eax, eax
             ret     4 * 3

    iasunk:
             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + SCR_OBJ.iActiveScriptSite]
             mov     edx, [pout]
             mov     [edx], eax
             jmp     iassok

    iasacw:
             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + SCR_OBJ.iActiveScriptSiteWindow]
             mov     edx, [pout]
             mov     [edx], eax
             jmp     iassok

    iasdsp:
             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + SCR_OBJ.iConsoleDispatch]
             mov     edx, [pout]
             mov     [edx], eax
             jmp     iassok

    IActiveScriptSite@GetLCID:
             invoke  GetUserDefaultLCID
             mov     edx, [esp + 8]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 2

    IActiveScriptSite@GetItemInfo:
             mov     eax, [esp + 8]
             cinvoke wcscmp, eax, wcon
             test    eax, eax
             jz      @f

             mov     eax, TYPE_E_ELEMENTNOTFOUND
             ret     4 * 5

    @@:
             mov     eax, [esp + 12]
             cmp     eax, SCRIPTINFO_IUNKNOWN
             jz      sdisp

             cmp     eax, SCRIPTINFO_ALL_FLAGS
             jz      sdisp

             cmp     eax, SCRIPTINFO_ITYPEINFO
             jz      tinf

             mov     eax, E_INVALIDARG
             ret     4 * 5

    sdisp:
             mov     eax, [esp + 16]
             test    eax, eax
             jz      tinf

             mov     edx, [esp + 4]
             sub     edx, [edx + 4]
             lea     edx, [edx + SCR_OBJ.iConsoleDispatch]
             mov     [eax], edx

    tinf:
             mov     eax, [esp + 20]
             test    eax, eax
             jz      @f

             and     dword [eax], 0
    @@:
             xor     eax, eax
             ret     4 * 5

    IActiveScriptSite@GetDocVersionString:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IActiveScriptSite@OnScriptTerminate:
             xor     eax, eax
             ret     4 * 3

    IActiveScriptSite@OnStateChange:
             xor     eax, eax
             ret     4 * 2

    IActiveScriptSite@OnScriptError:
            mov     eax, [esp + 8]
            mov     [ScriptError], eax
            cominvk ScriptError, GetSourcePosition, 0, cnt, 0
            test    eax, eax
            jnz     @f

            invoke  RtlZeroMemory, einf, sizeof.EXCEPINFO
            cominvk ScriptError, GetExceptionInfo, einf
            test    eax, eax
            jnz     @f

            inc     [cnt]
            cinvoke printf,\
                    <'[SCRIPT EXCEPTION]: %S. %S.', 0Ah, 0Dh, 0>,\
                    [einf.bstrSource],\
                    [einf.bstrDescription]

            cinvoke printf, <'Line: %d', 0Ah, 0Dh, 0>, [cnt]
            invoke  SysFreeString, [einf.bstrSource]
            invoke  SysFreeString, [einf.bstrDescription]
            invoke  SysFreeString, [einf.bstrHelpFile]

            xor     eax, eax
            mov     ax, [einf.wCode]
            cinvoke printf, <'Code: %d', 0Ah, 0Dh, 0>, eax
            invoke  SysAllocStringLen, 0, MAX_PATH * 2
            test    eax, eax
            jz      @f

            mov     [env], eax
            cominvk ScriptError, GetSourceLineText, eax
            test    eax, eax
            jnz     fws

            cinvoke printf, <'Source: %S', 0Ah, 0Dh, 0>, [env]

    fws:
            invoke  SysFreeString, [env]

    @@:
             mov     [nret], 1
             xor     eax, eax
             ret     4 * 2

    IActiveScriptSite@OnEnterScript:
             xor     eax, eax
             ret     4 * 1

    IActiveScriptSite@OnLeaveScript:
            xor     eax, eax
            ret     4 * 1

    IActiveScriptSiteWindow@EnableModeless:
             xor     eax, eax
             ret     4 * 2

    IActiveScriptSiteWindow@GetWindow:
             mov     ecx, [esp + 8]
             mov     eax, [bin.hwndOwner]
             mov     [ecx], eax
             xor     eax, eax
             ret     4 * 2

    IConsoleDispatch@GetTypeInfoCount:
             mov     eax, [esp + 8]
             mov     dword [eax], 0
             xor     eax, eax
             ret     4 * 2

    IConsoleDispatch@GetTypeInfo:
             mov     eax, DISP_E_BADINDEX
             ret     4 * 4

    IConsoleDispatch@GetIDsOfNames:
             mov     eax, [esp + 24]
             mov     [tmp], eax
             mov     eax, [esp + 16]
             mov     [pout], eax
             mov     eax, [esp + 12]
             push    esi
             mov     esi, eax

    fnames:
             cinvoke wcscmp, dword [esi], wech
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 10
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], wmre
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 11
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], warg
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 12
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], wslp
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 13
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], wpwd
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 14
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], wqui
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 15
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], whwn
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 16
             jmp     eofgn

    @@:
             cinvoke wcscmp, dword [esi], wpup
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 17
             jmp     eofgn

    @@:
             add     [tmp], 4
             add     esi, 4
             dec     [pout]
             cmp     [pout], 0
             jg      fnames

    notimpl:
             pop     esi
             mov     eax, E_NOTIMPL
             ret     4 * 6

    eofgn:
             pop     esi
             xor     eax, eax
             ret     4 * 6

    IConsoleDispatch@Invoke:
             mov     eax, [esp + 28]
             mov     [tmp], eax
             mov     eax, [esp + 8]
             cmp     eax, 17
             jne     fhwnd

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 3
             jne     bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_I4
             jne     btm

             mov     edx, [ebx + VARIANT.lVal]
             mov     [pout], edx
             add     ebx, 16
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             push    ebx
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     -1,\
                     smbf,\
                     1024,\
                     0,\
                     0
             pop     ebx
             add     ebx, 16
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     -1,\
                     [buff],\
                     [size],\
                     0,\
                     0
             invoke  MessageBox, [ofn.hwndOwner], [buff], smbf, [pout]
             mov     [pout], eax

             cmp     [tmp], 0
             je      risok2

             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     ebx, [pout]
             mov     [eax + VARIANT.lVal], ebx
             jmp     risok2

    fhwnd:
             cmp     eax, 16
             jne     fexit

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     eax, [eax + DISPPARAMS.cArgs]
             test    eax, eax
             jnz     bpc

             cmp     [tmp], 0
             je      risok2

             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     ebx, [bin.hwndOwner]
             mov     [eax + VARIANT.lVal], ebx
             jmp     risok2

    fexit:
             cmp     eax, 15
             jne     fpwd

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 1
             jg      bpc

             cmp     ecx, 0
             jne     gnret

             mov     [nret], 0
             je      ssuni

    gnret:
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_I4
             jne     btm

             mov     edx, [ebx + VARIANT.lVal]
             mov     [nret], edx

    ssuni:
             cominvk ActiveScript,\
                     SetScriptState,\
                     SCRIPTSTATE_UNINITIALIZED
             test    eax, eax
             jz      risok2

    sserr:
             pop     edi esi edx ecx ebx
             mov     eax, DISP_E_EXCEPTION
             ret     4 * 9

    fpwd:
             cmp     eax, 14
             jne     fsleep

             invoke  RtlZeroMemory,\
                     ovi,\
                     sizeof.RTL_OSVERSIONINFOEXW
             mov     [ovi.dwOSVersionInfoSize], sizeof.RTL_OSVERSIONINFOEXW
             invoke  RtlGetVersion, ovi
             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     esi, [buff]
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 1
             jl      rci2

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             cmp     dx, 0
             je      rci2

             cinvoke printf, szwz, edx

    rci2:
             invoke  ReadConsoleInput, [stdi], ir, 1, cnt
             cmp     [cnt], 1
             jne     rci2

             cmp     [ir.EventType], KEY_EVENT
             jne     rci2
                                                                                                                             ; windows 10 previous versions
             cmp     [ovi.dwMajorVersion], 10
             jl      kdctl

             mov     eax, [ir.KeyEvent.dwControlKeyState]
             and     eax, SHIFT_PRESSED
             jnz     getkac

    kdctl:
             cmp     [ir.KeyEvent.bKeyDown], 10000h
             je      rci2

             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_BACK
             jne     okeys

             mov     edi, [buff]
             cmp     edi, esi
             je      rci2

             dec     esi
             invoke  GetConsoleScreenBufferInfo, [stdo], csbi
             sub     [csbi.dwCursorPosition.X], 1
             invoke  SetConsoleCursorPosition,\
                     [stdo],\
                     dword [csbi.dwCursorPosition]
             invoke  WriteFile, [stdo], ' ', 1, 0, 0
             invoke  SetConsoleCursorPosition,\
                     [stdo],\
                     dword [csbi.dwCursorPosition]
             jmp     rci2

    okeys:
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_RETURN
             je      eofpwd

             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_ESCAPE
             je      prnnl

    getkac:
             xor     eax, eax
             mov     al,  byte [ir.KeyEvent.AsciiChar]
             cmp     eax, 127
             je      rci2

             cmp     eax, 32
             jl      rci2

    pbchr:
             mov     byte [esi], al
             inc     esi

             invoke  WriteFile, [stdo], '*', 1, 0, 0
             jmp     rci2

    eofpwd:
             mov     byte [esi], 0

    prnnl:
             invoke  WriteFile, [stdo], snln, 2, 0, 0
             cmp     [ir.KeyEvent.wVirtualKeyCode], VK_ESCAPE
             je      voidstr

             invoke  lstrlen, [buff]
             cmp     eax, 0
             jg      sasl2

    voidstr:
             cmp     [tmp], 0
             je      risok2

             push    0
             jmp     retv

    sasl2:
             mov     [cnt], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jnz     retws2

    badmem:
             pop     edi esi edx ecx ebx
             mov     eax, DISP_E_ARRAYISLOCKED
             ret     4 * 9

    retws2:
             push    eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [buff],\
                     [cnt],\
                     eax,\
                     [cnt]
    retv:
             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_BSTR
             pop     ebx
             mov     [eax + VARIANT.bstrVal], ebx
             jmp     risok2

    fsleep:
             cmp     eax, 13
             jne     farg2

    fsleep2:
             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 1
             jne     bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_I4
             jne     btm

             mov     ecx, [ebx + VARIANT.lVal]
             cmp     ecx, 1
             jl      btm

             invoke  Sleep, ecx
             jmp     risok2

    farg2:
             cmp     eax, 12
             jne     fech

    farg3:
             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             cmp     [tmp], 0
             je      risok2

             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 0
             jl      bpc

             cmp     ecx, 1
             jg      bpc

             test    ecx, ecx
             jnz     garg

             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     edx, [argc]
             mov     [eax + VARIANT.lVal], edx
             jmp     risok2

    garg:
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_I4
             jne     btm

             mov     ecx, [ebx + VARIANT.lVal]
             cmp     ecx, 0
             jl      bbi

             mov     ebx, [argc]
             dec     ebx
             cmp     ecx, ebx
             jg      bbi

             mov     ebx, [argv]
             imul    ecx, 4
             add     ebx, ecx
             mov     ebx, dword [ebx]
             push    ebx
             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_BSTR
             pop     ebx
             mov     [eax + VARIANT.bstrVal], ebx
             jmp     risok2

    fech:
             cmp     eax, 10
             je      gbstr

             cmp     eax, 11
             jne     @f

             inc     [bmre]

    gbstr:
             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 2
             jg      bpc

             cmp     ecx, 1
             jl      bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             cmp     ecx, 2
             jne     fargs

             add     ebx, 16

    fargs:
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             cmp     dx, 0
             je      risok

             push    edx ebx ecx
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     -1,\
                     0,\
                     0,\
                     0,\
                     0

             pop     ecx ebx
             cmp     ecx, 2
             jne     mbstr

             pop     edx
             push    ebx ecx
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     eax,\
                     cpbf,\
                     MAX_PATH * 2,\
                     0,\
                     0

             mov     [smp], cpbf
             pop     ecx ebx
             dec     ecx
             sub     ebx, 16
             jmp     fargs

    mbstr:
             cmp     eax, [size]
             jl      prnmb

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jnz     memok

             pop     edi esi edx ecx ebx edx
             mov     eax, DISP_E_ARRAYISLOCKED
             ret     4 * 9

    memok:
             mov     [buff], eax
             mov     eax, [size]

    prnmb:
             cmp     [bmre], 0
             jg      col

             push    eax
             invoke  lstrcmpi, [smp], 'colored'
             test    eax, eax
             jnz     noc

             pop     eax
             jmp     col

    noc:
             pop     eax edx
             cinvoke printf, szwz, edx
             jmp     risok

    col:
             pop     edx
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     eax,\
                     [buff],\
                     eax,\
                     0,\
                     0

             jmp     tprn

    risok:
             mov     [bmre], 0
             mov     [smp], 0

    risok2:
             pop     edi esi edx ecx ebx
             xor     eax, eax
             ret     4 * 9

    bpc:
             pop     edi esi edx ecx ebx
             mov     eax, DISP_E_BADPARAMCOUNT
             ret     4 * 9

    btm:
             pop     edi esi edx ecx ebx
             mov     eax, DISP_E_TYPEMISMATCH
             ret     4 * 9

    bbi:
             pop     edi esi edx ecx ebx
             mov     eax, DISP_E_BADINDEX
             ret     4 * 9

    @@:
             mov     eax, DISP_E_MEMBERNOTFOUND
             ret     4 * 9

    ;---------------------------------------------------------------------------------------------------------------------------
    ; WebBrowser Interfaces
    ;---------------------------------------------------------------------------------------------------------------------------

    IUnknown@QueryInterface:
             mov     eax, [esp + 4]
             mov     [lpt], eax
             mov     eax, [esp + 8]
             mov     [riid], eax
             mov     eax, [esp + 12]
             mov     [pout], eax
             mov     [bcnt], 0

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IUnknown
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IOleClientSite
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IOleInPlaceSite
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IOleInPlaceFrame
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IDocHostUIHandler
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], DIID_DWebBrowserEvents2
             test    eax, eax
             jnz     @f

             inc     [bcnt]
             invoke  IsEqualGUID, [riid], IID_IServiceProvider
             test    eax, eax
             jnz     @f

    noint:
             push    edx
             mov     edx, [pout]
             mov     eax, 0
             mov     [edx], eax
             pop     edx
             mov     eax, E_NOINTERFACE
             ret     4 * 3

    @@:
             mov     eax, [lpt]
             sub     eax, [eax + 4]

             cmp     [bcnt], 1
             jne     olecs

             lea     eax, [eax + WB_OBJ.iUnknown]
             jmp     @f

    olecs:
             cmp     [bcnt], 2
             jne     oleps

             lea     eax, [eax + WB_OBJ.iOleClientSite]
             jmp     @f

    oleps:
             cmp     [bcnt], 3
             jne     olepf

             lea     eax, [eax + WB_OBJ.iOleInPlaceSite]
             jmp     @f

    olepf:
             cmp     [bcnt], 4
             jne     dochh

             lea     eax, [eax + WB_OBJ.iOleInPlaceFrame]
             jmp     @f

    dochh:
             cmp     [bcnt], 5
             jne     edisp

             lea     eax, [eax + WB_OBJ.iDocHostUIHandler]
             jmp     @f

    edisp:
             cmp     [bcnt], 6
             jne     isp

             lea     eax, [eax + WB_OBJ.iWebBrowserEvents]
             jmp     @f

    isp:
             cmp     [bcnt], 7
             jne     noint

             lea     eax, [eax + WB_OBJ.iServiceProvider]
;            jmp     @f

    @@:
             push    edx
             mov     edx, [pout]
             mov     [edx], eax
             pop     edx
             xor     eax, eax
             ret     4 * 3

    IUnknown@AddRef:
             mov     eax, 2
             ret     4 * 1

    IUnknown@Release:
             mov     eax, 1
             ret     4 * 1

    IWebBrowserEvents@GetTypeInfoCount:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IWebBrowserEvents@GetTypeInfo:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IWebBrowserEvents@GetIDsOfNames:
             mov     eax, DISP_E_UNKNOWNINTERFACE
             ret     4 * 6

    IWebBrowserEvents@Invoke:
             mov     eax, [esp + 8]
             cmp     eax, DISPID_NAVIGATECOMPLETE2
             jne     @f

             mov     [bwbc], 0
             cominvk WebBrowser, get_Document, DispDoc
             test    eax, eax
             jnz     ncr

             cominvk DispDoc, QueryInterface,\
                     IID_IHTMLDocument2,\
                     HtmlDoc

             test    eax, eax
             jnz     ncr2

             cominvk HtmlDoc, get_parentWindow, Window
             test    eax, eax
             jnz     ncr3


             cominvk Window, execScript, jse, jsl, var
             cominvk Window, Release
             mov     [Window], 0

    ncr3:
             cominvk HtmlDoc, Release
             mov     [HtmlDoc], 0

    ncr2:
             cominvk DispDoc, Release
             mov     [DispDoc], 0

    ncr:
             xor     eax, eax
             ret     4 * 9

    @@:
             cmp     eax, DISPID_TITLECHANGE
             jne     @f

             cmp     byte [smp], 0
             jne     @f

             mov     eax, [esp + 24]
             mov     eax, [eax + DISPPARAMS.rgvarg]
             mov     eax, [eax + VARIANT.bstrVal]
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     eax,\
                     -1,\
                     smbf,\
                     MAX_PATH * 2,\
                     0,\
                     0
             invoke  SetWindowText, [clx], smbf
             xor     eax, eax
             ret     4 * 9

    @@:
             cmp     eax, DISPID_DOCUMENTCOMPLETE
             jne     @f

             xor     eax, eax
             mov     al, [bwbc]
             or      eax, 01h
             mov     [bwbc], al
             cominvk WebBrowser, get_Document, DispDoc
             test    eax, eax
             jnz     @f

             cominvk DispDoc, QueryInterface, IID_ICustomDoc, CustomDoc
             test    eax, eax
             jnz     hdoc

             push    ebx
             mov     ebx, [pmo]
             lea     eax, [ebx + WB_OBJ.iDocHostUIHandler]
             pop     ebx
             cominvk CustomDoc, SetUIHandler, eax
             cominvk CustomDoc, Release

    hdoc:
             cominvk DispDoc,\
                     QueryInterface,\
                     IID_IHTMLDocument2,\
                     HtmlDoc

             test    eax, eax
             jnz     rkdd

             cominvk HtmlDoc, get_parentWindow, Window
             test    eax, eax
             jnz     getall

             cominvk Window, execScript, jsf, jsl, var
             cominvk Window, Release

    getall:
             cominvk HtmlDoc, get_all, ElementCollection
             test    eax, eax
             jnz     rkhd

             cominvk ElementCollection,\
                     tags,\
                     VT_BSTR,\
                     0,\
                     wlnk,\
                     0,\
                     DispLink

             test    eax, eax
             jnz     rkec

             cominvk DispLink,\
                     QueryInterface,\
                     IID_IHTMLElementCollection,\
                     ElementCollection2

             test    eax, eax
             jnz     rkdl

             cominvk ElementCollection2, get_length, cnt
             test    eax, eax
             jnz     rkec2

             mov     eax, [wcls.hIcon]
             mov     [icoa], eax

    boec:
             dec     [cnt]
             cmp     [cnt], -1
             je      dico

             cominvk ElementCollection2, item,\
                     VT_I4,\
                     0,\
                     [cnt],\
                     0,\
                     VT_I4,\
                     0,\
                     [cnt],\
                     0,\
                     DispEnum

             test    eax, eax
             jnz     boec

             cominvk DispEnum,\
                     QueryInterface,\
                     IID_IHTMLElement,\
                     Element

             test    eax, eax
             jnz     rkde

             cominvk Element, get_tagName, lpt
             test    eax, eax
             jnz     rke

             cinvoke _wcsicmp, [lpt], wlnk
             test    eax, eax
             jnz     rke

             cominvk Element,\
                     QueryInterface,\
                     IID_IHTMLLinkElement,\
                     LinkElement

             test    eax, eax
             jnz     rke

             cominvk LinkElement, get_rel, lpt
             test    eax, eax
             jnz     rkle

             cinvoke _wcsicmp, [lpt], wico
             test    eax, eax
             jz      kgref

             cinvoke _wcsicmp, [lpt], wsci
             test    eax, eax
             jnz     rkle

    kgref:
             cominvk LinkElement, get_href, lpt
             test    eax, eax
             jnz     rkle

             cinvoke sprintf, [buff], szwz, [lpt]
             invoke  lstrcmp, cpbf, [buff]
             test    eax, eax
             jz      krec

             invoke  lstrcpy, cpbf, [buff]
             mov     eax, cpbf
             cmp     byte [eax], '.'
             je      kglurl

             cmp     byte [eax], '/'
             jne     kpico

    kglurl:
             mov     [aux], eax
             cominvk WebBrowser, get_LocationURL, lpt
             test    eax, eax
             jnz     eofec

             push    ebx
             cinvoke sprintf, [buff], szwz, [lpt]
             mov     ebx, [buff]
             add     ebx, eax

    kroot:
             dec     eax
             cmp     eax, 10
             jl      kcat

             dec     ebx
             cmp     byte [ebx], '?'
             jne     kand

             mov     byte [ebx], 0
             cmp     [cnt], -1
             jl      kroot
             jmp     kcat

    kand:
             cmp     byte [ebx], '&'
             jne     kdirs

             mov     byte [ebx], 0
             jmp     kroot

    kdirs:
             cmp     byte [ebx], '/'
             jne     kroot

             mov     byte [ebx], 0
             cmp     [cnt], -1
             jl      kroot

    kcat:
             invoke  lstrcat, [buff], [aux]
             pop     ebx

    kpico:
             mov     [rowc], eax
             invoke  lstrlen, [buff]
             add     eax, [buff]
             inc     eax
             mov     [rowd], eax
             invoke  GetTempPath, MAX_PATH, eax
             invoke  lstrcat, [rowd], '~favicon.ico'
             invoke  PathFileExists, [rowd]
             test    eax, eax
             jz      kdl

             invoke  DeleteFile, [rowd]
             test    eax, eax
             jz      eofec

    kdl:
             invoke  URLDownloadToFile,\
                     0,\
                     [rowc],\
                     [rowd],\
                     BINDF_GETNEWESTVERSION or BINDF_IGNORESECURITYPROBLEM,\
                     0
             test    eax, eax
             jnz     eofec

             invoke  LoadImage,\
                     0,\
                     [rowd],\
                     IMAGE_ICON,\
                     0,\
                     0,\
                     LR_LOADFROMFILE or LR_DEFAULTSIZE or LR_SHARED

             test    eax, eax
             jnz     ksave

             cmp     [cnt], -1
             jl      rkec2

             invoke  LoadLibrary, gdll
             test    eax, eax
             jz      eofec

             mov     [stdi], eax
             invoke  GetProcAddress, eax, gsup
             test    eax, eax
             jnz     gdip

    gpdis:
             invoke  GetProcAddress, [stdi], gdim
             test    eax, eax
             jz      rgpd

             pushd   [rowc]
             call    eax

    rgpd:
             ret

    gpsd:
             invoke  GetProcAddress, [stdi], 'GdiplusShutdown'
             test    eax, eax
             jz      rgpsd

             pushd   gdis
             call    eax

    rgpsd:
             ret

    gperr:
             invoke  FreeLibrary, [stdi]
             jmp     eofec

    gdip:
             pushd   0
             pushd   gdis
             pushd   gdit
             call    eax
             test    eax, eax
             jnz     gperr

             invoke  GetProcAddress, [stdi], 'GdipCreateBitmapFromFile'
             test    eax, eax
             jnz     bff

             call    gpsd
             jmp     gperr

    bff:
             mov     [xtrb], eax
             invoke  lstrlen, [rowd]
             mov     [size], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jz      gperr

             mov     [aux], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [rowd],\
                     [size],\
                     eax,\
                     [size]

             pushd   rowc
             pushd   [aux]
             mov     eax, [xtrb]
             call    eax
             push    eax
             invoke  SysFreeString, [aux]
             pop     eax
             test    eax, eax
             jz      b2ico

             call    gpsd
             jmp     gperr

    b2ico:
             invoke  GetProcAddress, [stdi], 'GdipCreateHICONFromBitmap'
             test    eax, eax
             jnz     b2if

             call    gpdis
             call    gpsd
             jmp     gperr

    b2if:
             pushd   aux
             pushd   [rowc]
             call    eax
             push    eax
             call    gpdis
             call    gpsd
             pop     eax
             test    eax, eax
             jnz     gperr

             invoke  FreeLibrary, [stdi]
             mov     eax, [aux]

    ksave:
             mov     [icoa], eax
             mov     [icob], eax
             jmp     eofec

    krec:
             mov     eax, [icob]
             jmp     ksave

    eofec:
             cmp     [cnt], -1
             jl      rkec2

             mov     [cnt], 0

    rkle:
             cominvk LinkElement, Release

    rke:
             cominvk Element, Release

    rkde:
             cominvk DispEnum, Release
             jmp     boec

    rkec2:
            invoke  SendMessage,\
                    [clx],\
                    WM_SETICON,\
                    ICON_SMALL,\
                    [icoa]

            cominvk ElementCollection2, Release
            cmp     [cnt], -1
            jl      rsok

    rkdl:
            cominvk DispLink, Release

    rkec:
            cominvk ElementCollection, Release

    rkhd:
            cominvk HtmlDoc, Release

    rkdd:
            cominvk DispDoc, Release

    rsok:
            xor     eax, eax
            ret     4 * 9

    @@:
            mov     eax, E_NOTIMPL
            ret     4 * 9

    dico:
           dec      [cnt]
           mov      eax, fico
           jmp      kglurl

    IOleClientSite@SaveObject:
            mov     eax, E_NOTIMPL
            ret     4 * 1

    IOleClientSite@GetMoniker:
            mov     eax, E_NOTIMPL
            ret     4 * 4

    IOleClientSite@GetContainer:
            mov     eax, [esp + 8]
            mov     edx, 0
            mov     [eax], edx
            mov     eax, E_NOINTERFACE
            ret     4 * 2

    IOleClientSite@ShowObject:
            mov     eax, E_NOTIMPL
            ret     4 * 1

    IOleClientSite@OnShowWindow:
            mov     eax, E_NOTIMPL
            ret     4 * 2

    IOleClientSite@RequestNewObjectLayout:
            mov     eax, E_NOTIMPL
            ret     4 * 1

    IOleInPlaceSite@GetWindow:
            mov     eax, [esp + 8]
            mov     edx, [clx]
            mov     [eax], edx
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceSite@ContextSensitiveHelp:
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceSite@CanInPlaceActivate:
            xor     eax, eax
            ret     4 * 1

    IOleInPlaceSite@OnInPlaceActivate:
            xor     eax, eax
            ret     4 * 1

    IOleInPlaceSite@OnUIActivate:
            xor     eax, eax
            ret     4 * 1

    IOleInPlaceSite@GetWindowContext:
;            mov     eax, [esp + 4]
;            sub     eax, [eax + 4]
;            lea     edx, [eax + WB_OBJ.iOleInPlaceFrame]
;            mov     eax, [esp + 8]
;            mov     [eax], edx
;            mov     eax, [esp + 12]
;            mov     [eax], edx
;            mov     eax, [esp + 16]
;            push    eax
;            invoke  GetClientRect, [clx], eax
;            mov     edx, [esp + 20]
;            pop     eax
;            invoke  CopyRect, edx, eax
;            mov     eax, [esp + 24]
;            mov     [eax + OLEINPLACEFRAMEINFO.fMDIApp], FALSE
;            mov     edx, [clx]
;            mov     [eax + OLEINPLACEFRAMEINFO.hwndFrame], edx
;            mov     [eax + OLEINPLACEFRAMEINFO.haccel], 0
;            mov     [eax + OLEINPLACEFRAMEINFO.cAccelEntries], 0
;            xor     eax, eax
;            ret     4 * 6
             mov     eax, E_NOTIMPL
             ret     4 * 6

    IOleInPlaceSite@Scroll:
            mov     eax, E_NOTIMPL
            ret     4 * 2

    IOleInPlaceSite@OnUIDeactivate:
            mov     eax, eax
            ret     4 * 2

    IOleInPlaceSite@OnInPlaceDeactivate:
            xor     eax, eax
            ret     4 * 1

    IOleInPlaceSite@DiscardUndoState:
            mov     eax, E_NOTIMPL
            ret     4 * 1

    IOleInPlaceSite@DeactivateAndUndo:
            mov     eax, E_NOTIMPL
            ret     4 * 1

    IOleInPlaceSite@OnPosRectChange:
;            cominvk Unknown,\
;                     QueryInterface,\
;                     IID_IOleInPlaceObject,\
;                     OleInPlaceObject
;            test    eax, eax
;            jnz     @f

;            mov     eax, [esp + 8]
;            test    eax, eax
;            jz      @f

;           cominvk OleInPlaceObject,\
;                    SetObjectRects,\
;                    eax,\
;                    eax

;            cominvk OleInPlaceObject, Release
;            xor     eax, eax
;            ret     4 * 2

;    @@:
            mov     eax, E_NOTIMPL
            ret     4 * 2


    IOleInPlaceFrame@GetWindow:
            mov     eax, [esp + 8]
            mov     edx, [clx]
            mov     [eax], edx
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceFrame@ContextSensitiveHelp:
            mov     eax, eax
            ret     4 * 2

    IOleInPlaceFrame@GetBorder:
            mov     eax, [esp + 8]
            test    eax, eax
            jnz     @f

            mov     eax, E_INVALIDARG
            ret     4 * 2

   @@:
            mov     eax, INPLACE_E_NOTOOLSPACE
            ret     4 * 2

    IOleInPlaceFrame@RequestBorderSpace:
            mov     eax, INPLACE_E_NOTOOLSPACE
            ret     4 * 2

    IOleInPlaceFrame@SetBorderSpace:
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceFrame@SetActiveObject:
            xor     eax, eax
            ret     4 * 3

    IOleInPlaceFrame@InsertMenus:
            mov     eax, E_NOTIMPL
            ret     4 * 3

    IOleInPlaceFrame@SetMenu:
            xor     eax, eax
            ret     4 * 4

    IOleInPlaceFrame@RemoveMenus:
            mov     eax, E_NOTIMPL
            ret     4 * 2

    IOleInPlaceFrame@SetStatusText:
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceFrame@EnableModeless:
            xor     eax, eax
            ret     4 * 2

    IOleInPlaceFrame@TranslateAccelerator:
            mov     eax, E_NOTIMPL
            ret     4 * 3

    IDocHostUIHandler@ShowContextMenu:
            mov     eax, [esp + 8]
            cmp     eax, CONTEXT_MENU_CONTROL
            jne     @f

            mov     eax, E_NOTIMPL
            ret     4 * 5

    @@:
            xor     eax, eax
            ret     4 * 5

    IDocHostUIHandler@GetHostInfo:
             mov     eax, [nlpp]
             and     eax, 10h
             jnz     @f

             mov     eax, [esp + 8]
             mov     edx, sizeof.DOCHOSTUIINFO
             mov     [eax + DOCHOSTUIINFO.cbSize], edx
             mov     [eax + DOCHOSTUIINFO.dwFlags], DOCHOSTUIFLAG_NO3DBORDER
             mov     [eax + DOCHOSTUIINFO.dwDoubleClick], DOCHOSTUIDBLCLK_DEFAULT
             xor     eax, eax
             ret     4 * 2

    @@:
             mov     eax, E_NOTIMPL
             ret     4 * 2


    IDocHostUIHandler@ShowUI:
             mov     eax, E_NOTIMPL
             ret     4 * 6

    IDocHostUIHandler@HideUI:
             mov     eax, E_NOTIMPL
             ret     4 * 1

    IDocHostUIHandler@UpdateUI:
             mov     eax, E_NOTIMPL
             ret     4 * 1

    IDocHostUIHandler@EnableModeless:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IDocHostUIHandler@OnDocWindowActivate:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IDocHostUIHandler@OnFrameWindowActivate:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IDocHostUIHandler@ResizeBorder:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IDocHostUIHandler@TranslateAccelerator:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IDocHostUIHandler@GetOptionKeyPath:
             mov     eax, E_NOTIMPL
             ret     4 * 3

    IDocHostUIHandler@GetDropTarget:
             mov     eax, E_NOTIMPL
             ret     4 * 3

    IDocHostUIHandler@GetExternal:
             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + WB_OBJ.iExternalDispatch]
             mov     edx, [esp + 8]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 2

    IDocHostUIHandler@TranslateUrl:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IDocHostUIHandler@FilterDataObject:
             mov     eax, E_NOTIMPL
             ret     4 * 3

    IServiceProvider@QueryService:
             mov     eax, [esp + 16]
             mov     [pout], eax
             mov     eax, [esp + 12]
             invoke  IsEqualGUID, eax, IID_IInternetSecurityManager
             test    eax, eax
             jz      @f

             mov     eax, [esp + 8]
             invoke  IsEqualGUID, eax, IID_IInternetSecurityManager
             test    eax, eax
             jz      @f

             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + WB_OBJ.iSecurityManager]
             mov     edx, [pout]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 4

     @@:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IInternetSecurityManager@QueryInterface:
             mov     eax, [esp + 8]
             invoke  IsEqualGUID, eax, IID_IInternetSecurityManager
             test    eax, eax
             jz      @f

             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + WB_OBJ.iSecurityManager]
             mov     edx, [esp + 12]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 3

    @@:
             mov     edx, [esp + 12]
             mov     eax, 0
             mov     [edx], eax
             mov     eax, E_NOINTERFACE
             ret     4 * 3

    IInternetSecurityManager@SetSecuritySite:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IInternetSecurityManager@GetSecuritySite:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IInternetSecurityManager@MapUrlToZone:
             mov     eax, [esp + 12]
             test    eax, eax
             jnz     @f

             mov     eax, E_INVALIDARG
             ret     4 * 4
    @@:

             mov     eax, INET_E_DEFAULT_ACTION
             ret     4 * 4

    IInternetSecurityManager@GetSecurityId:
             mov     eax, [esp + 12]
             test    eax, eax
             jnz     @f

             mov     eax, E_INVALIDARG
             ret     4 * 5
    @@:

             mov     eax, INET_E_DEFAULT_ACTION
             ret     4 * 5

    IInternetSecurityManager@ProcessUrlAction:
             cmp      [bwbt], 1
             je       @f

             mov      eax, [esp + 8]
             cinvoke  _wcsnicmp, eax, wfle, 5
             test     eax, eax
             jnz      defpua

    @@:
             cmp      [bsrm], 1
             jne      defpua

             mov     eax, [esp + 12]
             cmp     eax, URLACTION_JAVA_PERMISSIONS
             je      @f

             cmp     eax, URLACTION_DOWNLOAD_SIGNED_ACTIVEX
             je      @f

             cmp     eax, URLACTION_DOWNLOAD_UNSIGNED_ACTIVEX
             je      @f

             cmp     eax, URLACTION_ACTIVEX_RUN
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_DATA_SAFETY
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY
             je      @f

             cmp     eax, URLACTION_ACTIVEX_CONFIRM_NOOBJECTSAFETY
             je      @f

             cmp     eax, URLACTION_ACTIVEX_NO_WEBOC_SCRIPT
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_REPURPOSEDETECTION
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_OPTIN
             je      @f

             cmp     eax, URLACTION_ACTIVEX_SCRIPTLET_RUN
             je      @f

             cmp     eax, URLACTION_ACTIVEX_DYNSRC_VIDEO_AND_ANIMATION
             je      @f

             cmp     eax, URLACTION_ACTIVEX_OVERRIDE_DOMAINLIST
             je      @f

             cmp     eax, URLACTION_ACTIVEX_ALLOW_TDC
             je      @f

             cmp     eax, URLACTION_SCRIPT_JAVA_USE
             je      @f

             cmp     eax, URLACTION_SCRIPT_SAFE_ACTIVEX
             je      @f

             cmp     eax, URLACTION_SCRIPT_PASTE
             je      @f

             cmp     eax, URLACTION_HTML_JAVA_RUN
             je      @f

             cmp     eax, URLACTION_AUTOMATIC_ACTIVEX_UI
             je      @f

    defpua:
             mov     eax, INET_E_DEFAULT_ACTION
             ret     4 * 9

    @@:
             mov     eax, [esp + 16]
             test    eax, eax
             jz      @f

             mov     byte [eax], URLPOLICY_ALLOW
             xor     eax, eax
             ret     4 * 9

    @@:
             mov     eax, E_INVALIDARG
             ret     4 * 9


    IInternetSecurityManager@QueryCustomPolicy:
             mov     eax, INET_E_DEFAULT_ACTION
             ret     4 * 8

    IInternetSecurityManager@SetZoneMapping:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IInternetSecurityManager@GetZoneMappings:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IExternalDispatch@QueryInterface:
             mov     eax, [esp + 4]
             mov     [lpt], eax
             mov     eax, [esp + 8]
             mov     [riid], eax
             mov     eax, [esp + 12]
             mov     [pout], eax

             invoke  IsEqualGUID, [riid], IID_IUnknown
             test    eax, eax
             jnz     @f

             invoke  IsEqualGUID, [riid], IID_IDispatch
             test    eax, eax
             jnz     @f

             mov     edx, [pout]
             mov     eax, 0
             mov     [edx], eax
             mov     eax, E_NOINTERFACE
             ret     4 * 3

    @@:
             mov     eax, [lpt]
             sub     eax, [eax + 4]
             lea     eax, [eax + WB_OBJ.iExternalDispatch]
             mov     edx, [pout]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 3

    IExternalDispatch@GetTypeInfoCount:
             mov     eax, [esp + 8]
             mov     dword [eax], 0
             xor     eax, eax
             ret     4 * 2

    IExternalDispatch@GetTypeInfo:
             mov     eax, DISP_E_BADINDEX
             ret     4 * 4

    IExternalDispatch@GetIDsOfNames:
             mov     eax, [esp + 24]
             mov     [tmp], eax
             mov     eax, [esp + 16]
             mov     [lpt], eax
             mov     eax, [esp + 12]
             push    esi
             mov     esi, eax

    fnames2:
             cinvoke wcscmp, dword [esi], jser
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 8
             jmp     eofgn2

   @@:
             cinvoke wcscmp, dword [esi], fson
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 10
             jmp     eofgn2

    @@:
             cinvoke wcscmp, dword [esi], wslp
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 11
             jmp     eofgn2

    @@:
             cinvoke wcscmp, dword [esi], warg
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 12
             jmp     eofgn2

    @@:
             cinvoke wcscmp, dword [esi], wwbt
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 13
             jmp     eofgn2
    @@:
             cinvoke wcscmp, dword [esi], whwn
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 14
             jmp     eofgn2

    @@:
             cinvoke wcscmp, dword [esi], wpup
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 15
             jmp     eofgn2

    @@:
             cinvoke wcscmp, dword [esi], wech
             test    eax, eax
             jnz     @f

             mov     eax, [tmp]
             mov     dword [eax], 16
             jmp     eofgn2

    @@:
             add     [tmp], 4
             add     esi, 4
             dec     [lpt]
             cmp     [lpt], 0
             jg      fnames2

             pop     esi
             mov     eax, E_NOTIMPL
             ret     4 * 6

    eofgn2:
             pop     esi
             xor     eax, eax
             ret     4 * 6

    IExternalDispatch@Invoke:
             mov     eax, [esp + 28]
             mov     [tmp], eax
             mov     eax, [esp + 8]
             cmp     eax, 16
             jne     @f

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 1
             jne     bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             cinvoke printf, szwz, edx

             cmp     [tmp], 0
             je      risok2

             mov     [pout], eax
             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     ebx, [pout]
             mov     [eax + VARIANT.lVal], ebx
             jmp     risok2

    @@:
             cmp     eax, 15
             jne     @f

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 3
             jne     bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_I4
             jne     btm

             mov     edx, [ebx + VARIANT.lVal]
             mov     [pout], edx
             add     ebx, 16
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             push    ebx
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     -1,\
                     smbf,\
                     1024,\
                     0,\
                     0

             pop     ebx
             add     ebx, 16
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             mov     edx, [ebx + VARIANT.bstrVal]
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     edx,\
                     -1,\
                     [buff],\
                     [size],\
                     0,\
                     0

             invoke  MessageBox, [clx], [buff], smbf, [pout]
             mov     [pout], eax

             cmp     [tmp], 0
             je      risok2

             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     ebx, [pout]
             mov     [eax + VARIANT.lVal], ebx
             jmp     risok2

    @@:
             cmp     eax, 14
             jne     @f

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     eax, [eax + DISPPARAMS.cArgs]
             test    eax, eax
             jnz     bpc

             cmp     [tmp], 0
             je      risok2

             invoke  VariantInit, [tmp]
             mov     eax, [tmp]
             mov     [eax + VARIANT.vt], VT_I4
             mov     ebx, [acw]
             mov     [eax + VARIANT.lVal], ebx
             jmp     risok2
    @@:
             cmp     eax, 13
             jne     @f

             mov     eax, [esp + 24]
             push    ebx ecx edx esi edi
             mov     ecx, [eax + DISPPARAMS.cArgs]
             cmp     ecx, 2
             jne     bpc

             mov     ebx, [eax + DISPPARAMS.rgvarg]
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BSTR
             jne     btm

             xor     edx, edx
             mov     edx, [ebx + VARIANT.bstrVal]
             push    ebx
             cinvoke sprintf, [buff], szwz, edx
             invoke  lstrcmp, [buff], [key]
             pop     ebx
             test    eax, eax
             jnz     risok2

             add     ebx, 16
             xor     edx, edx
             mov     dx, [ebx + VARIANT.vt]
             cmp     edx, VT_BOOL
             jne     btm

             xor     edx, edx
             mov     dx, [ebx + VARIANT.boolVal]

             mov     [bwbt], 0
             cmp     edx, VARIANT_TRUE
             jne     rgvarg

             mov     [bwbt], 1

    rgvarg:
             sub     ebx, 16
             jne     risok2
    @@:

             cmp     eax, 12
             je      farg3

             cmp     eax, 11
             je      fsleep2

             cmp     eax, 10
             jne     @f

             mov     [bmre], 1
             xor     eax, eax
             ret     4 * 9
    @@:
             cmp     eax, 8
             jne     @f

             xor     eax, eax
             mov     al, [bwbc]
             or      eax, 10h
             mov     [bwbc], al

             xor     eax, eax
             ret     4 * 9

    @@:
             mov     eax, DISP_E_MEMBERNOTFOUND
             ret     4 * 9

    ;---------------------------------------------------------------------------------------------------------------------------
    ; ShockwaveFlash Interfaces
    ;---------------------------------------------------------------------------------------------------------------------------

    IShockwaveFlashEvents@QueryInterface:
             mov     eax, [esp + 8]
             invoke  IsEqualGUID, eax, DIID__IShockwaveFlashEvents
             test    eax, eax
             jz      @f

             mov     eax, [esp + 4]
             sub     eax, [eax + 4]
             lea     eax, [eax + SWF_OBJ.iShockwaveFlashEvents]
             mov     edx, [esp + 12]
             mov     [edx], eax
             xor     eax, eax
             ret     4 * 3

    @@:
             mov     edx, [esp + 12]
             mov     eax, 0
             mov     [edx], eax
             mov     eax, E_NOINTERFACE
             ret     4 * 3

    IShockwaveFlashEvents@GetTypeInfoCount:
             mov     eax, E_NOTIMPL
             ret     4 * 2

    IShockwaveFlashEvents@GetTypeInfo:
             mov     eax, E_NOTIMPL
             ret     4 * 4

    IShockwaveFlashEvents@GetIDsOfNames:
             mov     eax, DISP_E_UNKNOWNINTERFACE
             ret     4 * 6

    IShockwaveFlashEvents@Invoke:
             mov     [pout], ebx
             mov     [riid], ecx
             mov     eax, [esp + 8]
             cmp     eax, DISPID_READYSTATECHANGE
             jne     @f

;            cinvoke printf, '<DISPID_READYSTATECHANGE>'
             jmp     eofswfe
    @@:
             cmp     eax, DISPID_PROGRESS
             jne     @f

;            cinvoke printf, '<DISPID_PROGRESS>'
             jmp     eofswfe

    @@:
             cmp     eax, DISPID_FSCOMMAND
             jne     @f

             mov     eax, [esp + 24]
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             add     ebx, 16
             mov     edx, [ebx + VARIANT.bstrVal]
             sub     ebx, 16
             push    ebx
             cinvoke wcscmp, edx, wech
             pop     ebx
             test    eax, eax
             jnz     fexec

             mov     eax, [ebx + VARIANT.bstrVal]
             cinvoke printf, szwz, eax
             jmp     eofswfe

    fexec:
             mov     eax, [esp + 24]
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             add     ebx, 16
             mov     edx, [ebx + VARIANT.bstrVal]
             sub     ebx, 16
             push    ebx
             cinvoke wcscmp, edx, wexe
             pop     ebx
             test    eax, eax
             jnz     fmenu

             mov     eax, [ebx + VARIANT.bstrVal]
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     eax,\
                     -1,\
                     [buff],\
                     [size],\
                     0,\
                     0

             invoke  RtlZeroMemory, pinf, sizeof.PROCESS_INFORMATION
             invoke  RtlZeroMemory, sinf, sizeof.STARTUPINFO
             mov     [sinf.cb], sizeof.STARTUPINFO
             mov     eax, CREATE_DEFAULT_ERROR_MODE
             or      eax, DETACHED_PROCESS
             invoke  CreateProcess,\
                     0,\
                     [buff],\
                     0,\
                     0,\
                     TRUE,\
                     eax,\
                     0,\
                     0,\
                     sinf,\
                     pinf

             invoke  CloseHandle, [pinf.hProcess]
             invoke  CloseHandle, [pinf.hThread]
             jmp     eofswfe

    fmenu:
             mov     eax, [esp + 24]
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             add     ebx, 16
             mov     edx, [ebx + VARIANT.bstrVal]
             sub     ebx, 16
             push    ebx
             cinvoke wcscmp, edx, wmnu
             pop     ebx
             test    eax, eax
             jnz     fqui

             mov     eax, [ebx + VARIANT.bstrVal]
             push    ebx
             cinvoke wcscmp, eax, wtru
             pop     ebx
             test    eax, eax
             jnz     menuoff

             push    ebx
             mov     eax, [nlpp]
             mov     ebx, 10h
             not     eax
             and     eax, ebx
             mov     [nlpp], eax
             pop     ebx
             jmp     eofswfe

    menuoff:
             mov     eax, [ebx + VARIANT.bstrVal]
             cinvoke wcscmp, eax, wfal
             test    eax, eax
             jnz     eofswfe

             mov     eax, [nlpp]
             or      eax, 10h
             mov     [nlpp], eax
             jmp     eofswfe

    fqui:
             mov     eax, [esp + 24]
             mov     ebx, [eax + DISPPARAMS.rgvarg]
             add     ebx, 16
             mov     edx, [ebx + VARIANT.bstrVal]
             sub     ebx, 16
             push    ebx
             cinvoke wcscmp, edx, wqui
             pop     ebx
             test    eax, eax
             jnz     eofswfe

             invoke  SendMessage, [clx], WM_CLOSE, 0, 0
             invoke  SendMessage, [acw], WM_CLOSE, 0, 0
             jmp     eofswfe

    @@:
             cmp     eax, DISPID_FLASHCALL
             jne     @f

             mov     eax, [esp + 24]
             mov     eax, [eax + DISPPARAMS.rgvarg]
             mov     eax, [eax + VARIANT.bstrVal]
             add     eax, 28

             mov     [tmp], eax
             cinvoke wcsncmp, [tmp], warg, 9
             test    eax, eax
             jnz     fgpt

             cmp     [argv], 0
             je      eofswfe

             cominvk ShockwaveFlash, SetReturnValue, [argv]
             jmp     eofswfe

    fgpt:
             cinvoke wcsncmp, [tmp], wgpt, 7
             test    eax, eax
             jnz     fgwnd

             mov     eax, [tmp]
             add     eax, 90
             cinvoke wcsncmp, eax, wtmp, 4
             test    eax, eax
             jnz     fgwnd

             invoke  lstrcat, smbf, tsta
             mov     eax, smbf
             add     eax, 8
             invoke  GetTempPath, MAX_PATH, eax
             invoke  lstrcat, smbf, tstb
             invoke  lstrlen, smbf
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      eofswfe

             mov     [tmp], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     smbf,\
                     ecx,\
                     eax,\
                     ecx

             cominvk ShockwaveFlash, SetReturnValue, [tmp]
             invoke  SysFreeString, [tmp]
             jmp     eofswfe

    fgwnd:
             cinvoke wcsncmp, [tmp], whwn, 4
             test    eax, eax
             jnz     fslp

             cinvoke sprintf,\
                     smbf,\
                     sdsz,\
                     tnta,\
                     [acw],\
                     tntb

             invoke  lstrlen, smbf
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      eofswfe

             mov     [tmp], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     smbf,\
                     ecx,\
                     eax,\
                     ecx

             cominvk ShockwaveFlash, SetReturnValue, [tmp]
             invoke  SysFreeString, [tmp]
             jmp     eofswfe

    fslp:
             cinvoke wcsncmp, [tmp], wslp, 5
             test    eax, eax
             jnz     fpopup

             invoke  lstrlen, tntb
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      eofswfe

             mov     [lpt], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     tntb,\
                     ecx,\
                     eax,\
                     ecx

             mov     eax, [tmp]
             add     eax, 86
             mov     ecx, eax
             mov     [tmp], eax

    gms:
             push    ecx
             cinvoke wcsncmp, ecx, [lpt], 9
             pop     ecx
             test    eax, eax
             jz      sms

             add     ecx, 2
             jmp     gms

    sms:
             sub     ecx, [tmp]
             mov     [cnt], ecx
             mov     eax, ecx
             mov     ecx, 2
             xor     edx, edx
             div     ecx
             push    eax
             invoke  RtlZeroMemory, cpbf, 512
             pop     eax
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     eax,\
                     cpbf,\
                     512,\
                     0,\
                     0

             stdcall s2l, cpbf, 1
             cmp     eax, 1
             jl      fwstr

             invoke  Sleep, eax
             jmp     fwstr

    fpopup:
             cinvoke wcsncmp, [tmp], wpup, 5
             test    eax, eax
             jnz     eofswfe

             invoke  lstrlen, tstb
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      eofswfe

             mov     [lpt], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     tstb,\
                     ecx,\
                     eax,\
                     ecx


             mov     eax, [tmp]
             add     eax, 86
             mov     ecx, eax
             mov     [tmp], eax

    gmsg:
             push    ecx
             cinvoke wcsncmp, ecx, [lpt], 9
             pop     ecx
             test    eax, eax
             jz      smsg

             add     ecx, 2
             jmp     gmsg

    smsg:
             sub     ecx, [tmp]
             mov     [cnt], ecx
             mov     eax, ecx
             mov     ecx, 2
             xor     edx, edx
             div     ecx
             push    eax
             cmp     eax, [size]
             jl      msg2mb

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jnz     msgbf

             pop     eax
             jmp     fwstr

    msgbf:
             mov     [buff], eax

    msg2mb:
             invoke  RtlZeroMemory, [buff], [size]
             pop     eax
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     eax,\
                     [buff],\
                     eax,\
                     0,\
                     0

             mov     eax, [tmp]
             add     eax, [cnt]
             add     eax, 34
             mov     ecx, eax
             mov     [tmp], eax

    gtitle:
             push    ecx
             cinvoke wcsncmp, ecx, [lpt], 9
             pop     ecx
             test    eax, eax
             jz      stitle

             add     ecx, 2
             jmp     gtitle

    stitle:
             sub     ecx, [tmp]
             mov     [cnt], ecx
             mov     eax, ecx
             mov     ecx, 2
             xor     edx, edx
             div     ecx
             push    eax
             invoke  RtlZeroMemory, smbf, 512
             pop     eax
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     eax,\
                     smbf,\
                     512,\
                     0,\
                     0

             invoke  SysFreeString, [lpt]
             invoke  lstrlen, tntb
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      eofswfe

             mov     [lpt], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     tntb,\
                     ecx,\
                     eax,\
                     ecx

             mov     eax, [tmp]
             add     eax, [cnt]
             add     eax, 34
             mov     ecx, eax
             mov     [tmp], eax


    gflag:
             push    ecx
             cinvoke wcsncmp, ecx, [lpt], 9
             pop     ecx
             test    eax, eax
             jz      sflag

             add     ecx, 2
             jmp     gflag

    sflag:
             sub     ecx, [tmp]
             mov     [cnt], ecx
             mov     eax, ecx
             mov     ecx, 2
             xor     edx, edx
             div     ecx
             push    eax
             invoke  RtlZeroMemory, cpbf, 512
             pop     eax
             invoke  WideCharToMultiByte,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     eax,\
                     cpbf,\
                     512,\
                     0,\
                     0

             stdcall s2l, cpbf, 1
             cmp     eax, -1
             je      fwstr

             invoke  MessageBox,\
                     [acw],\
                     [buff],\
                     smbf,\
                     eax

             cinvoke sprintf,\
                     smbf,\
                     sdsz,\
                     tnta,\
                     eax,\
                     tntb

             invoke  lstrlen, smbf
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      fwstr

             mov     [tmp], eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     smbf,\
                     ecx,\
                     eax,\
                     ecx

             cominvk ShockwaveFlash, SetReturnValue, [tmp]
             invoke  SysFreeString, [tmp]

    fwstr:
            invoke  SysFreeString, [lpt]

    eofswfe:
             mov     ebx, [pout]
             mov     ecx, [riid]
             mov     eax, eax
             ret     4 * 9


    ;---------------------------------------------------------------------------------------------------------------------------

    vargs:
             mov     ecx, [argc]
             sub     ecx, [aux]
             dec     ecx
             test    ecx, ecx
             jnz     array

             mov     [argv], 0
             mov     [argc], 0
             mov     eax, 1
             ret

    array:
             mov     [cnt], ecx
             cinvoke calloc, ecx, 4
             test    eax, eax
             jz      @f

             mov    [argv], eax
             mov    edi, eax

    sarr:
             inc     [aux]
             mov     ecx, [aux]
             cmp     [argc], ecx
             je      xchcnt

             add     esi, 4
             invoke  lstrlen, dword [esi]
             test    eax, eax
             jz      mb2wch

             mov     [xtr], eax
             invoke  SysAllocStringLen, 0, eax
             test    eax, eax
             jnz     mb2wch

    farr:
             cinvoke free, [argv]
             xor     eax, eax

    @@:
             ret

    mb2wch:
             mov     dword [edi], eax
             test    eax, eax
             jz      @f

             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     dword [esi],\
                     [xtr],\
                     eax,\
                     [xtr]

    @@:
             add     edi, 4
             jmp     sarr

    xchcnt:
             mov    eax, [cnt]
             mov    [argc], eax
             ret

    freeva:
             cmp     [argv], 0
             je      retfva

             mov     edi, [argv]

    fss:
             cmp     [argc], 0
             je      eofva

             mov     eax, dword [edi]
             test    eax, eax
             jz      @f

             invoke  SysFreeString, eax

    @@:
             add     edi, 4
             dec     [argc]
             jmp     fss

    eofva:
             cinvoke free, [argv]

    retfva:
             ret

    ;---------------------------------------------------------------------------------------------------------------------------

    proc SWFHookProc hwnd, wmsg, wparam, lparam
             cmp     [wmsg], WM_RBUTTONDOWN
             jne     @f

             mov     eax, [nlpp]
             and     eax, 10h
             jz      @f

             ret

   @@:
            invoke CallWindowProc,\
                   [wbh],\
                   [hwnd],\
                   [wmsg],\
                   [wparam],\
                   [lparam]
            ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc SWFMainProc uses ebx, hwnd, wmsg, wparam, lparam
             cmp     [wmsg], WM_SYSCOMMAND
             jne     @f

             cmp     [wparam], SC_MINIMIZE
             je      swmm

    @@:
             cmp     [wmsg], WM_PAINT
             je      swmp

             cmp     [wmsg], WM_DESTROY
             je      swmd

             cmp     [wmsg], WM_CREATE
             je      swmc

             cmp     [wmsg], WM_SIZE
             je      swms

    @@:
             invoke  DefWindowProc, [hwnd], [wmsg], [wparam], [lparam]
             jmp     @f

    swquit:

             invoke  SendMessage, [hwnd], WM_CLOSE, 0, 0
             jmp     @b

    swmp:
             cmp     [ovi.dwMajorVersion], 10
             jl      @b

             cmp     [bdat], 1
             jne     @b

             mov     [bdat], 0
             invoke  ShowWindow, [ofn.hwndOwner], SW_HIDE
             invoke  SetFocus, [hwnd]
             jmp     @b

    swmm:
             cmp     [ovi.dwMajorVersion], 10
             jl      @b

             invoke  GetWindowLong, [bin.hwndOwner], GWL_STYLE
             test    eax, eax
             jz      swmcw

             mov     [bdat], 0
             and     eax, WS_VISIBLE
             jnz     swmcw

             mov     [bdat], 1
             invoke  GetWindowText, [hwnd], smbf, MAX_PATH * 2
             invoke  SetWindowText, [bin.hwndOwner], smbf

             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SETICON,\
                     ICON_SMALL,\
                     [wcls.hIcon]

             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SETICON,\
                     ICON_BIG,\
                     [wcls.hIcon]

    swmcw:
             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SYSCOMMAND,\
                     SC_MINIMIZE,\
                     0

             jmp     @f

    swms:
             mov     eax, [lparam]
             and     eax, 0FFFFh
             movzx   ebx, ax
             mov     eax, [lparam]
             shr     eax, 10h
             and     eax, 0FFFFh
             movzx   ecx, ax
             invoke  MoveWindow, [acw], 0, 0, ebx, ecx, TRUE
             jmp     @b

    swmc:
             inc     [wndp]
             invoke  SetProp, [hwnd], szow, [wndp]
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 04h
             jnz     ccwb2

             mov     ecx, 4
             push    ecx
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jnz     noresz2

             pop     ecx
             mov     ecx, 14
             push    ecx

    noresz2:
             invoke  GetSystemMetrics, SM_CYCAPTION
             pop     ecx
             sub     [cla], ecx
             add     eax, ecx
             sub     [clb], eax

    ccwb2:
             invoke  CreateWindowEx,\
                     0,\
                     axwn,\
                     0,\
                     WS_VISIBLE,\
                     0,\
                     0,\
                     [cla],\
                     [clb],\
                     0,\
                     0,\
                     [wcls.hInstance],\
                     0

             test    eax, eax
             jz      swquit

             mov     [acw], eax
             mov     [xtr], 0
             invoke  CoCreateInstance,\
                     CLSID_ShockwaveFlash,\
                     0,\
                     CLSCTX_INPROC_SERVER,\
                     IID_IUnknown,\
                     Unknown

             test    eax, eax
             jnz     swquit

             invoke  GetProcAddress, [env], 'AtlAxAttachControl'
             test    eax, eax
             jz      swquit

             pushd   0
             pushd   [acw]
             pushd   [Unknown]
             call    eax
             test    eax, eax
             jnz     swquit

             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 1000h
             jnz     swfreg

             invoke  SetParent, [acw], [hwnd]
             invoke  SetWindowLong,\
                     [acw],\
                     GWL_STYLE,\
                     WS_CHILD or WS_VISIBLE

             jmp     folew

    swfreg:
             invoke  GetObject,\
                     [wcls.hbrBackground],\
                     sizeof.LOGBRUSH,\
                     lb

             invoke  SetLayeredWindowAttributes,\
                     [hwnd],\
                     [lb.lbColor],\
                     0,\
                     LWA_COLORKEY

             invoke  SetWindowLong,\
                     [acw],\
                     GWL_STYLE,\
                     WS_POPUP or WS_VISIBLE

            invoke  SetWindowLong,\
                     [acw],\
                     GWL_EXSTYLE,\
                     WS_EX_LAYERED or WS_EX_TOPMOST or WS_EX_TOOLWINDOW

             invoke  SetWindowPos,\
                     [acw],\
                     HWND_TOP,\
                     0,\
                     0,\
                     0,\
                     0,\
                     SWP_NOSIZE or SWP_NOMOVE or SWP_FRAMECHANGED

             mov     eax, [nlpp]
             and     eax, 400h
             jnz     falpha

             mov     eax, [nlpp]
             and     eax, 200h
             jz      folew

    rgcl:
             mov     eax, [key]
             cmp     eax, -1
             jne     rgcl

             RGB     255, 255, 255

             invoke  SetLayeredWindowAttributes,\
                     [acw],\
                     eax,\
                     0,\
                     LWA_COLORKEY
             jmp     folew

    falpha:
             invoke  SetLayeredWindowAttributes,\
                     [acw],\
                     0,\
                     [rowc],\
                     LWA_ALPHA

    folew:
             cominvk Unknown,\
                     QueryInterface,\
                     IID_IOleWindow,\
                     OleWindow

             test    eax, eax
             jnz     swfoo

             cominvk OleWindow, GetWindow, xtr
             test    eax, eax
             jnz     swrow

             invoke  SetWindowLong, [xtr], GWL_WNDPROC, SWFHookProc
             test    eax, eax
             jz      swrow

             mov     [wbh], eax

    swrow:
             cominvk OleWindow, Release

    swfoo:
             invoke  GetProcessHeap
             invoke  HeapAlloc, eax, HEAP_ZERO_MEMORY, sizeof.SWF_OBJ
             test    eax, eax
             jz      @f

             mov     [pmo], eax
             mov     [eax + SWF_OBJ.iShockwaveFlashEvents], vtblIShockwaveFlashEvents
             mov     [eax + SWF_OBJ.Base0], 0

             cominvk Unknown,\
                     QueryInterface,\
                     IID_IOleObject,\
                     OleObject

             test    eax, eax
             jnz     @f

             cominvk OleObject,\
                     QueryInterface,\
                     IID_IShockwaveFlash,\
                     ShockwaveFlash

             test    eax, eax
             jnz     @f

             cominvk ShockwaveFlash, put_AllowScriptAccess, wall
             cominvk ShockwaveFlash, put_EmbedMovie, VARIANT_FALSE
             cominvk ShockwaveFlash, DisableLocalSecurity
             cmp     [key], -1
             je      nobcl

             cominvk ShockwaveFlash, put_BackgroundColor, [key]

    nobcl:
             cominvk ShockwaveFlash,\
                     QueryInterface,\
                     IID_IConnectionPointContainer,\
                     ConnPointContainer

             test    eax, eax
             jnz     swfurl

             cominvk ConnPointContainer,\
                     FindConnectionPoint,\
                     DIID__IShockwaveFlashEvents,\
                     ConnPoint

             test    eax, eax
             jnz     rswcp

             mov     ebx, [pmo]
             lea     eax, [ebx + SWF_OBJ.iShockwaveFlashEvents]
             cominvk ConnPoint, Advise, eax, cook
             cominvk ConnPoint, Release

    rswcp:
             cominvk ConnPointContainer, Release

    swfurl:
             invoke  lstrlen, [tmp]
             push    eax
             invoke  SysAllocStringLen, 0, eax
             pop     ecx
             test    eax, eax
             jz      @f

             push    eax
             invoke  MultiByteToWideChar,\
                     CP_ACP,\
                     0,\
                     [tmp],\
                     ecx,\
                     eax,\
                     ecx
             pop     eax
             push    eax
             cominvk ShockwaveFlash, LoadMovie, 0, eax
             pop     eax
             invoke  SysFreeString, eax
             cominvk ShockwaveFlash, Play
             jmp     @f

    swmd:
             cmp     [ShockwaveFlash], 0
             je      role2

             cominvk ShockwaveFlash,\
                     QueryInterface,\
                     IID_IConnectionPointContainer,\
                     ConnPointContainer

             test    eax, eax
             jnz     rswf

             cominvk ConnPointContainer,\
                     FindConnectionPoint,\
                     DIID__IShockwaveFlashEvents,\
                     ConnPoint

             test    eax, eax
             jnz     rswcpc

             cominvk ConnPoint, Unadvise, [cook]
             cominvk ConnPoint, Release

    rswcpc:
             cominvk ConnPointContainer, Release

    rswf:
             cominvk ShockwaveFlash, Release

    role2:
             cmp     [OleObject], 0
             je      rswunk

             cominvk OleObject, Close, OLECLOSE_NOSAVE
             cominvk OleObject, Release

    rswunk:
             cmp    [Unknown], 0
             je      rswfo

             cominvk Unknown, Release

    rswfo:
             cmp     [pmo], 0
             je      eofswp

             invoke  GetProcessHeap
             invoke  HeapFree, eax, [pmo]

    eofswp:
             invoke  PostQuitMessage, 0
             xor     eax, eax

    @@:
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc WBHookProc uses esi, code, wparam, lparam
             cmp     [code], HC_ACTION
             jne     @f

             mov     esi, [lparam]

             virtual at esi
                    wnd CWPSTRUCT <>
             end virtual

             cmp     [wnd.message], WM_PARENTNOTIFY
             jne     @f

             cmp     [wnd.wParam],  WM_DESTROY
             jne     @f

             xor     eax, eax
             mov     al, [bwbc]
             test    eax, eax
             jz      @f

             cmp     eax, 11h
             jne     unhwb

             mov     [bwbc], 1
             jmp     @f

    unhwb:
             invoke  UnhookWindowsHookEx, [wbh]
             invoke  SendMessage, [clx], WM_CLOSE, 0, 0

    @@:
             invoke  CallNextHookEx, [wbh], [code], [wparam], [lparam]
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc WBMainProc uses ebx, hwnd, wmsg, wparam, lparam
             cmp     [wmsg], WM_SYSCOMMAND
             jne     @f

             cmp     [wparam], SC_MINIMIZE
             je      wmm

    @@:
             cmp     [wmsg], WM_PAINT
             je      wmp

             cmp     [wmsg], WM_DESTROY
             je      wmd

             cmp     [wmsg], WM_CREATE
             je      wmc

             cmp     [wmsg], WM_SIZE
             je      wms

             cmp     [wmsg], WM_COMMAND
             jnz     @f

             mov     eax, [wparam]
             cmp     ax, ID_COPY_CMD
             jne     cut

             mov     [aux], wcpy
             jmp     wmk

    cut:
             cmp     ax, ID_CUT_CMD
             jne     paste

             mov     [aux], wcut
             jmp     wmk

    paste:
             cmp     ax, ID_PASTE_CMD
             jne     undo

             mov     [aux], wpte
             jmp     wmk

    undo:
             cmp     ax, ID_UNDO_CMD
             jne     close

             mov     [aux], wudo
             jmp     wmk

    close:
             cmp     ax, ID_CLOSE_CMD
             jne     @f

    wbexit:

             invoke  SendMessage, [hwnd], WM_CLOSE, 0, 0

    @@:
             invoke  DefWindowProc, [hwnd], [wmsg], [wparam], [lparam]
             jmp     @f

    wmp:
             cmp     [ovi.dwMajorVersion], 10
             jl      @b

             cmp     [bdat], 1
             jne     @b

             mov     [bdat], 0
             invoke  ShowWindow, [bin.hwndOwner], SW_HIDE
             invoke  SetFocus, [hwnd]
             jmp     @b

    wmm:
             cmp     [ovi.dwMajorVersion], 10
             jl      mcw

             invoke  GetWindowLong, [bin.hwndOwner], GWL_STYLE
             test    eax, eax
             jz      mcw

             mov     [bdat], 0
             and     eax, WS_VISIBLE
             jnz     mcw

             mov     [bdat], 1
             invoke  GetWindowText, [hwnd], smbf, MAX_PATH * 2
             invoke  SetWindowText, [bin.hwndOwner], smbf

             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SETICON,\
                     ICON_SMALL,\
                     [icoa]

             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SETICON,\
                     ICON_BIG,\
                     [icoa]

    mcw:
             invoke  SendMessage,\
                     [bin.hwndOwner],\
                     WM_SYSCOMMAND,\
                     SC_MINIMIZE,\
                     0

             jmp     @f

    wmk:
             cmp     [WebBrowser], 0
             je      @b

             cominvk WebBrowser, get_Document, DispDoc
             test    eax, eax
             jnz     @b

             cominvk DispDoc,\
                     QueryInterface,\
                     IID_IHTMLDocument2,\
                     HtmlDoc

             test    eax, eax
             jnz     rdd

             cominvk HtmlDoc,\
                     execCommand,\
                     [aux],\
                     VARIANT_FALSE,\
                     VT_EMPTY,\
                     0,\
                     0,\
                     0,\
                     bdw

             cominvk HtmlDoc, Release

    rdd:
             cominvk DispDoc, Release
             jmp     @b

    wms:
             mov     eax, [lparam]
             and     eax, 0FFFFh
             movzx   ebx, ax
             mov     eax, [lparam]
             shr     eax, 10h
             and     eax, 0FFFFh
             movzx   ecx, ax
             invoke  MoveWindow, [acw], 0, 0, ebx, ecx, TRUE
             jmp     @b

    wmc:
             inc     [wndp]
             invoke  SetProp, [hwnd], szow, [wndp]
             mov     ebx, WS_CHILD
             or      ebx, WS_VISIBLE
             push    ebx
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 04h
             jnz     nocptn

             mov     ecx, 4
             push    ecx
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 02h
             jnz     noresz

             pop     ecx
             mov     ecx, 14
             push    ecx

    noresz:
             invoke  GetSystemMetrics, SM_CYCAPTION
             pop     ecx
             sub     [cla], ecx
             add     eax, ecx
             sub     [clb], eax

    nocptn:
             pop     ebx
             xor     eax, eax
             mov     ax, [bdw]
             and     eax, 10h
             jnz     ccwb

             or      ebx, WS_HSCROLL
             or      ebx, WS_VSCROLL

    ccwb:
             invoke  CreateWindowEx,\
                     0,\
                     axwn,\
                     [tmp],\
                     ebx,\
                     0,\
                     0,\
                     [cla],\
                     [clb],\
                     [hwnd],\
                     0,\
                     [wcls.hInstance],\
                     0

             test    eax, eax
             jz      wbexit

             mov     [acw], eax
             invoke  GetProcAddress, [env], 'AtlAxGetControl'
             test    eax, eax
             jz      @f

             pushd   Unknown
             pushd   [acw]
             call    eax
             test    eax, eax
             jnz     @f

             cominvk Unknown,\
                     QueryInterface,\
                     IID_IOleWindow,\
                     OleWindow

             test    eax, eax
             jnz     kwb2

             cominvk OleWindow, GetWindow, xtr
             test    eax, eax
             jnz     krow

             invoke  GetWindowThreadProcessId, [xtr], 0
             invoke  SetWindowsHookEx,\
                     WH_CALLWNDPROC,\
                     WBHookProc,\
                     [ofn.hInstance],\
                     eax

             cmp     eax, 0
             jne     krow

             mov     [wbh], eax

    krow:
             cominvk OleWindow, Release

    kwb2:
             invoke  GetProcessHeap
             invoke  HeapAlloc, eax, HEAP_ZERO_MEMORY, sizeof.WB_OBJ
             test    eax, eax
             jz      @f

             mov     [pmo], eax
             mov     [eax + WB_OBJ.iUnknown], vtblIUnknown
             mov     [eax + WB_OBJ.Base0], 0
             mov     [eax + WB_OBJ.iOleClientSite], vtblIOleClientSite
             mov     [eax + WB_OBJ.Base1], 8
             mov     [eax + WB_OBJ.iOleInPlaceSite], vtblIOleInPlaceSite
             mov     [eax + WB_OBJ.Base2], 16
             mov     [eax + WB_OBJ.iOleInPlaceFrame], vtblIOleInPlaceFrame
             mov     [eax + WB_OBJ.Base3], 24
             mov     [eax + WB_OBJ.iDocHostUIHandler], vtblIDocHostUIHandler
             mov     [eax + WB_OBJ.Base4], 32
             mov     [eax + WB_OBJ.iWebBrowserEvents], vtblIWebBrowserEvents
             mov     [eax + WB_OBJ.Base5], 40
             mov     [eax + WB_OBJ.iExternalDispatch], vtblIExternalDispatch
             mov     [eax + WB_OBJ.Base6], 48
             mov     [eax + WB_OBJ.iServiceProvider], vtblIServiceProvider
             mov     [eax + WB_OBJ.Base7], 56
             mov     [eax + WB_OBJ.iSecurityManager], vtblIInternetSecurityManager
             mov     [eax + WB_OBJ.Base8], 64

             cominvk Unknown,\
                     QueryInterface,\
                     IID_IOleObject,\
                     OleObject

             test    eax, eax
             jnz     @f

             mov     ebx, [pmo]
             lea     eax, [ebx + WB_OBJ.iOleClientSite]
             cominvk OleObject, SetClientSite, eax
             test    eax, eax
             jnz     role

             cominvk OleObject,\
                     QueryInterface,\
                     IID_IWebBrowser2,\
                     WebBrowser

             test    eax, eax
             jnz     role

             cominvk WebBrowser,\
                     put_RegisterAsDropTarget,\
                     VARIANT_FALSE

             cominvk WebBrowser,\
                     QueryInterface,\
                     IID_IConnectionPointContainer,\
                     ConnPointContainer

             test    eax, eax
             jnz     rwb

             cominvk ConnPointContainer,\
                     FindConnectionPoint,\
                     DIID_DWebBrowserEvents2,\
                     ConnPoint

             test    eax, eax
             jnz     relcp

             mov     ebx, [pmo]
             lea     eax, [ebx + WB_OBJ.iWebBrowserEvents]
             cominvk ConnPoint, Advise, eax, cook
             cominvk ConnPoint, Release

    relcp:
             cominvk ConnPointContainer, Release
             jmp     @f

    wmd:
             cmp     [WebBrowser], 0
             je      role

             cominvk WebBrowser,\
                     QueryInterface,\
                     IID_IConnectionPointContainer,\
                     ConnPointContainer

             test    eax, eax
             jnz     rwb

             cominvk ConnPointContainer,\
                     FindConnectionPoint,\
                     DIID_DWebBrowserEvents2,\
                     ConnPoint

             test    eax, eax
             jnz     rcpc

    unad:
             cominvk ConnPoint, Unadvise, [cook]
             cominvk ConnPoint, Release

    rcpc:
             cominvk ConnPointContainer, Release

    rwb:
             cmp     [WebBrowser], 0
             je      role

             cominvk WebBrowser, Release

    role:
             cmp     [OleObject], 0
             je      rwbu

             cominvk OleObject, SetClientSite, 0
             cominvk OleObject, Close, OLECLOSE_NOSAVE
             cominvk OleObject, Release

    rwbu:
             cmp     [Unknown], 0
             je      rwbo

             cominvk Unknown, Release

    rwbo:
             cmp     [pmo], 0
             je      eofkp

             invoke  GetProcessHeap
             invoke  HeapFree, eax, [pmo]

    eofkp:
             invoke  PostQuitMessage, 0
             xor     eax, eax

    @@:
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc ConsoleCtlHandle, dwCtrlType
             cmp     [dwCtrlType], CTRL_C_EVENT
             je      @f

             cmp     [dwCtrlType], CTRL_CLOSE_EVENT
             je      @f

             ret

    @@:
             cmp     [pinf.hProcess], 0
             je      @f

             invoke  TerminateProcess,\
                     [pinf.hProcess],\
                     [dwCtrlType]
    @@:
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc print, str
             invoke  lstrlen, [str]
             invoke  WriteFile, [stdo], [str], eax, 0, 0
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc fread, path
             local   hf: DWORD

             invoke  _lopen, [path], OF_READ
             test    eax, eax
             jz      fre

             mov     [hf], eax
             invoke  _llseek, eax, 0, FILE_END
             test    eax, eax
             jnz     chsz

             invoke  _lclose, [hf]
             jmp     fre

    chsz:
             cmp     eax, [size]
             jl      frd

             mov     [size], eax
             cinvoke realloc, [buff], eax
             test    eax, eax
             jz      fre

             mov     [buff], eax

    frd:
             invoke  _llseek, [hf], 0, FILE_BEGIN
             invoke  _lread, [hf], [buff], [size]
             push    eax
             invoke  _lclose, [hf]
             pop     eax
             ret

    fre:
             mov     eax, -1
             ret
    endp

   ;---------------------------------------------------------------------------------------------------------------------------

    proc fwrite uses edx, path, bdt, cbd
             local   cbw: DWORD

             invoke  CreateFile,\
                     [path],\
                     GENERIC_WRITE,\
                     FILE_SHARE_WRITE,\
                     0,\
                     CREATE_ALWAYS,\
                     FILE_ATTRIBUTE_NORMAL or FILE_ATTRIBUTE_ARCHIVE,\
                     0

             cmp     eax, INVALID_HANDLE_VALUE
             jz      fwe

             push    eax
             lea     edx, [cbw]
             invoke  WriteFile,\
                     eax,\
                     [bdt],\
                     [cbd],\
                     edx,\
                     0

             pop     edx
             push    eax
             invoke  CloseHandle, edx
             pop     eax
             test    eax, eax
             jz      fwe

             mov     eax, [cbw]
             ret

    fwe:
             mov     eax, -1
             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc ftoken uses esi ebx ecx edx, d: DWORD, a: BYTE, b: BYTE, c: BYTE
             mov     edi, [d]

    @@:
             cmp     byte [edi], 0
             jne     ftini

             mov     eax, -1
             ret

    ftini:
             xor     eax, eax
             mov     al, [a]
             cmp     byte [edi], al
             je      chkesc

    cnter:
             inc     [xtr]
             inc     edi
             jmp     @b

    chkesc:
             cmp     [xtr], 0
             je      sidicx

             mov     ecx, edi
             dec     ecx
             cmp     byte [ecx], '~'
             jne     sidicx

             mov     byte [ecx], 0
             inc     ecx
             lea     ecx, dword [ecx]
             invoke  lstrcat, [d], ecx
             jmp     @b

    sidicx:
             mov     esi, edi
             xor     ecx, ecx

    closing:
             inc     edi
             cmp     byte [edi], 0
             je      @f

             inc     ecx
             cmp     ecx, 6
             je      @b

             xor     eax, eax
             mov     al, [a]
             cmp     byte [edi], al
             je      @b

             cmp     byte [edi], 35
             jl      @b

             xor     eax, eax
             mov     al, [b]
             cmp     byte [edi], al
             jne     closing

             mov     byte [esi], 0
             mov     byte [edi], 0
             inc     esi
             inc     edi

             cmp     byte [esi], '@'
             jne     nodefcl

             cmp     [c], 0
             jne     rest

             cmp     ecx, 2
             jne     rest

             mov     eax, [clx]
             ret

    nodefcl:
             lea     eax, dword [esi]
             stdcall s2l, eax, 1
             cmp     eax, 255
             jg      rest

             cmp     eax, -1
             jg      eoftkn

    rest:
             dec     esi
             dec     edi
             xor     eax, eax
             mov     al, [a]
             mov     byte [esi], al
             mov     al, [b]
             mov     byte [edi], al
             inc     edi
             jmp     @b

    eoftkn:
             cmp     [c], 1
             jne     @f

             dec     esi
             mov     byte [esi], al
             inc     esi
             lea     ecx, dword [esi]
             lea     eax, dword [edi]
             mov     ebx, eax
             sub     ebx, ecx
             invoke  lstrcpy, ecx, eax
             mov     edi, eax
             mov     edx, eax
             invoke  lstrlen, eax
             dec     edx
             add     eax, edx

    clmem:
             inc     eax
             mov     byte [eax], 0
             dec     ebx
             test    ebx, ebx
             jnz     clmem
             jmp     @b

    @@:

             ret
    endp

    ;---------------------------------------------------------------------------------------------------------------------------

    proc s2l uses edi ecx, str, errno
             mov     eax, 10
             mov     edi, [str]

    s2lchk:
             cmp     byte [edi], 0
             je      _eofloop

             cmp     byte [edi], 'x'
             je      @f

             cmp     byte [edi], 'X'
             je      @f

             cmp     byte [edi], 'a'
             je      @f

             cmp     byte [edi], 'A'
             je      @f

             cmp     byte [edi], 'b'
             je      @f

             cmp     byte [edi], 'B'
             je      @f

             cmp     byte [edi], 'c'
             je      @f

             cmp     byte [edi], 'C'
             je      @f

             cmp     byte [edi], 'd'
             je      @f

             cmp     byte [edi], 'D'
             je      @f

             cmp     byte [edi], 'e'
             je      @f

             cmp     byte [edi], 'E'
             je      @f

             cmp     byte [edi], 'f'
             je      @f

             cmp     byte [edi], 'F'
             je      @f

             cmp     byte [edi], 48
             jl      s2lerr

             cmp     byte [edi], 57
             jg      s2lerr

             inc     edi
             jmp     s2lchk

    @@:
             mov     eax, 16
             inc     edi
             jmp     s2lchk

    _eofloop:
             cinvoke strtol, dword [str], lpt, eax
             mov     ecx, [lpt]
             cmp     ecx, [str]
             je      s2lerr

             ret

     s2lerr:
             cmp    [errno], 1
             jne    @f

             mov    eax, -1
             ret

     @@:
             cmp    [errno], 2
             je     xerr

             cmp    [errno], 3
             jne    @f

             mov    eax, LONG_MAX
             ret
     @@:

             jmp    error
     endp

     ;---------------------------------------------------------------------------------------------------------------------------

     proc s2f uses ecx, str, errno
             cinvoke strtod, [str], lpt
             mov     ecx, [lpt]
             cmp     ecx, [str]
             je      @f

             ret

     @@:
             cmp    [errno], 1
             jne    @f

             mov    eax, -1
             ret

     @@:
             cmp    [errno], 2
             je     xerr

             cmp    [errno], 3
             jne    @f

             mov    eax, LONG_MAX
             ret

     @@:
             jmp    error

     endp

;---------------------------------------------------------------------------------------------------------------------------

.data
    bwbc                          db 0
    bmod                          db 0
    bsrm                          db 0
    bdat                          db 0
    bcnt                          db 0
    bwbt                          db 0
    bmre                          db 0
    nlpp                          dd 6
    rows                          dd 0
    rowc                          dd 0
    rowd                          dd 0
    buff                          dd 0
    size                          dd 0
    argc                          dd 0
    argv                          dd 0
    env                           dd 0
    aux                           dd 0
    cnt                           dd 0
    lpt                           dd 0
    tmp                           dd 0
    xtr                           dd 0
    stdo                          dd 0
    stdi                          dd 0
    appn                          dd 0
    xtrb                          dd 0
    riid                          dd 0
    pout                          dd 0
    cook                          dd 0
    spbx                          dd 0
    icoa                          dd 0
    icob                          dd 0
    smp                           dd 0
    pmo                           dd 0
    wbh                           dd 0
    acw                           dd 0
    cla                           dd 0
    clb                           dd 0
    clx                           dd 0
    key                           dd 0
    gdit                          dd 0
    nret                          dd 0
    hacc                          dd 0
    wndp                          dd 0
    dbla                          dq 0.0
    dblb                          dq 0.0
    pidl                          rd 1
    bdw                           dw 0
    var                           VARIANT
    einf                          EXCEPINFO
    msg                           MSG
    sysi                          SYSTEM_INFO
    ovi                           RTL_OSVERSIONINFOEXW
    sei                           SHELLEXECUTEINFO
    sa                            SECURITY_ATTRIBUTES
    cwr                           RECT
    lb                            LOGBRUSH
    ofn                           OPENFILENAME
    bin                           BROWSEINFO
    csbi                          CONSOLE_SCREEN_BUFFER_INFO
    ir                            INPUT_RECORD
    the                           THREADENTRY32
    fds                           WIN32_FIND_DATA
    sinf                          STARTUPINFO
    pinf                          PROCESS_INFORMATION
    smbf                          rb MAX_PATH
    bmbf                          rb MAX_PATH
    cpbf                          rb MAX_PATH
    dpbf                          rb MAX_PATH
    help                          db '$2;'
                                  db 'Console Command Tool (CCT) v%d.%d.%d.%d'
                                  db '$8;'
                                  db 0Ah, 0Dh
                                  db 'Created in 2018 by Jos‚ A. Rojo L.'
                                  db 0Ah, 0Dh, 0Ah, 0Dh
                                  db '$@;'
                                  db 'For more information you can see "cct.pdf" file.'
                                  db 0Ah, 0Dh
    gith                          db 'You can also go to https://github.com/jar0l/cct'
    snln                          db 0Ah, 0Dh, 0
    zipf                          db 50h, 4Bh, 05h, 06h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    prn2                          db 'printto', 0
    szow                          db 'zorder', 0
    szwz                          db '%S', 0
    szsz                          db '%s', 0
    szfa                          db '%f', 0
    szfb                          db '%.f', 0
    sdsz                          db '%s%d%s', 0
    intl                          db 'Intel %s', 0
    wser                          db ' Server ', 0
    mdef                          db ' -- More -- ', 0
    sech                          db '--echo', 0
    sprn                          db '--printf', 0
    scmd                          db '--type', 0
    styp                          db '/type', 0
    smod                          db '/mod', 0
    smaj                          db '/major', 0
    smnr                          db '/minor', 0
    smin                          db '/min', 0
    smax                          db '/max', 0
    cox                           db '/x', 0
    coy                           db '/y', 0
    cow                           db '/width', 0
    coh                           db '/height', 0
    get                           db '/get', 0
    set                           db '/set', 0
    ssum                          db '/sum', 0
    ssub                          db '/sub', 0
    smul                          db '/mul', 0
    sdiv                          db '/div', 0
    sfmt                          db '/format', 0
    squi                          db '/quiet', 0
    sfle                          db '/file', 0
    sout                          db '/output', 0
    sttl                          db '/title', 0
    sarg                          db '/arguments', 0
    sflt                          db '/flat', 0
    srsz                          db '/resizable', 0
    sdlg                          db '/dialog', 0
    sfsn                          db '/fullscreen', 0
    sune                          db '/unescape', 0
    fico                          db '/favicon.ico', 0
    gdll                          db 'gdiplus.dll', 0
    gsup                          db 'GdiplusStartup', 0
    gdim                          db 'GdipDisposeImage', 0
    gsif                          db 'GdipSaveImageToFile', 0
    atl                           db 'atl.dll', 0
    axwi                          db 'AtlAxWinInit', 0
    axwn                          db 'AtlAxWin', 0
    fbe                           db 'Software\Microsoft\Internet Explorer\Main\FeatureControl\'
                                  db 'FEATURE_BROWSER_EMULATION', 0
    clsn                          db 'CCTWebBrowser', 0
    swcn                          db 'CCTSWFlash', 0
    tsta                          db '<string>', 0
    tstb                          db '</string>', 0
    tnta                          db '<number>', 0
    tntb                          db '</number>', 0
    zip                           db '.zip', 0
    bmp                           db '.bmp', 0
    jpg                           db '.jpg', 0
    gif                           db '.gif', 0
    png                           db '.png', 0
    exe                           db '.exe', 0
    jsx                           du '.js', 0
    vbsx                          du '.vbs', 0
    jsl                           du 'JScript', 0
    vbsl                          du 'VBScript', 0
    wall                          du 'always', 0
    wmnu                          du 'showmenu', 0
    wtru                          du 'true', 0
    wfal                          du 'false', 0
    wqui                          du 'quit', 0
    wexe                          du 'exec', 0
    wgpt                          du 'getpath', 0
    wtmp                          du 'temp', 0
    wlnk                          du 'link', 0
    wico                          du 'icon', 0
    wsci                          du 'shortcut icon', 0
    wcon                          du 'console', 0
    wech                          du 'echo', 0
    wmre                          du 'more', 0
    wslp                          du 'sleep', 0
    wpwd                          du 'password', 0
    warg                          du 'arguments', 0
    whwn                          du 'hwnd', 0
    wpup                          du 'popup', 0
    wwbt                          du 'trusted', 0
    fson                          du '__fson', 0
    jser                          du '__jser', 0
    wcpy                          du 'copy', 0
    wpte                          du 'paste', 0
    wcut                          du 'cut', 0
    wudo                          du 'undo', 0
    jse                           du 'window.onerror = function () { var _cct_iid = setInterval ('
                                  du 'function () { if (window.external) { window.external.__jser'
                                  du '; clearInterval(_cct_iid); }}, 0); };', 0
    jsf                           du 'window.onerror = function () { window.external.__jser; }; i'
                                  du 'f (!document._cct_wb_ && document.msFullscreenEnabled) { do'
                                  du 'cument._cct_wb_ = true; document.addEventListener("MSFullsc'
                                  du 'reenChange", function () { if (document.msFullscreenElement'
                                  du ') window.external.__fson; }, false); }', 0
    wfle                          du 'file:', 0
    wcls                          WNDCLASS 0, WBMainProc, 0, 0, 0, 0, 0, COLOR_WINDOW + 1, 0, clsn
    gdis                          GDIP_STARTUP_INPUT 1, 0, FALSE, FALSE
    Unknown                       IUnknown
    DispDoc                       IDispatch
    DispLink                      IDispatch
    DispEnum                      IDispatch
    OleWindow                     IOleWindow
    WebBrowser                    IWebBrowser2
    OleObject                     IOleObject
    ConnPointContainer            IConnectionPointContainer
    ConnPoint                     IConnectionPoint
    CustomDoc                     ICustomDoc
    HtmlDoc                       IHTMLDocument2
    ElementCollection             IHTMLElementCollection
    ElementCollection2            IHTMLElementCollection
    LinkElement                   IHTMLLinkElement
    Element                       IHTMLElement
    Window                        IHTMLWindow2
    ShockwaveFlash                IShockwaveFlash
    ActiveScript                  IActiveScript
    ActiveScriptParse             IActiveScriptParse
    ScriptError                   IActiveScriptError
    ScriptEncoder                 IScriptEncoder
    SpVoice                       ISpVoice
    RegExp                        IRegExp
    ZipFile                       IFolder
    Folder                        IFolder
    FolderItem                    IFolderItem
    ZipItems                      IFolderItems
    ShellDispatch                 IShellDispatch
    CLSID_Shell                   GUID 13709620-C279-11CE-A49E-444553540000
    CLSID_RegExp                  GUID 3F4DACA4-160D-11D2-A8E9-00104B365C9F
    CLSID_ScriptingEncoder        GUID 32DA2B15-CFED-11D1-B747-00C04FC2B085
    CLSID_JScript                 GUID F414C260-6AC0-11CF-B6D1-00AA00BBBB58
    CLSID_JSEncoding              GUID F414C262-6AC0-11CF-B6D1-00AA00BBBB58
    CLSID_VBScript                GUID B54F3741-5B07-11CF-A4B0-00AA004A55E8
    CLSID_VBSEncoding             GUID B54F3743-5B07-11CF-A4B0-00AA004A55E8
;   CLSID_WebBrowser              GUID 8856F961-340A-11D0-A96B-00C04FD705A2
    CLSID_ShockwaveFlash          GUID D27CDB6E-AE6D-11CF-96B8-444553540000
    CLSID_SpVoice                 GUID 96749377-3391-11D2-9EE3-00C04F797396
    CLSID_BMP_ENCODER             GUID 557CF400-1A04-11D3-9A73-0000F81EF32E
    CLSID_JPG_ENCODER             GUID 557CF401-1A04-11D3-9A73-0000F81EF32E
    CLSID_GIF_ENCODER             GUID 557CF402-1A04-11D3-9A73-0000F81EF32E
    CLSID_PNG_ENCODER             GUID 557CF406-1A04-11D3-9A73-0000F81EF32E
    IID_IUnknown                  GUID 00000000-0000-0000-C000-000000000046
    IID_IDispatch                 GUID 00020400-0000-0000-C000-000000000046
    IID_IRegExp                   GUID 3F4DACA0-160D-11D2-A8E9-00104B365C9F
    IID_IShellDispatch            GUID D8F015C0-C278-11CE-A49E-444553540000
    IID_IActiveScript             GUID BB1A2AE1-A4F9-11CF-8F20-00805F2CD064
    IID_IActiveScriptParse        GUID BB1A2AE2-A4F9-11CF-8F20-00805F2CD064
    IID_IActiveScriptSite         GUID D57D7817-E9B7-4A82-8574-01D0F93D6170
    IID_IActiveScriptSiteWindow   GUID D10F6761-83E9-11CF-8F20-00805F2CD064
    IID_IScriptEncoder            GUID AADC65F6-CFF1-11D1-B747-00C04FC2B085
    IID_IShockwaveFlash           GUID D27CDB6C-AE6D-11CF-96B8-444553540000
    IID_ISpVoice                  GUID 6C44DF74-72B9-4992-A1EC-EF996E0422D4
    IID_IOleObject                GUID 00000112-0000-0000-C000-000000000046
    IID_IOleWindow                GUID 00000114-0000-0000-C000-000000000046
    IID_IWebBrowser2              GUID D30C1661-CDAF-11D0-8A3E-00C04FC9E26E
    IID_IHTMLDocument2            GUID 332C4425-26CB-11D0-B483-00C04FD90119
    IID_IHTMLElementCollection    GUID 3050F21F-98B5-11CF-BB82-00AA00BDCE0B
    IID_IHTMLLinkElement          GUID 3050F205-98B5-11CF-BB82-00AA00BDCE0B
    IID_IHTMLElement              GUID 3050F1FF-98B5-11CF-BB82-00AA00BDCE0B
    IID_IConnectionPointContainer GUID B196B284-BAB4-101A-B69C-00AA00341D07
    IID_IOleClientSite            GUID 00000118-0000-0000-C000-000000000046
    IID_IOleInPlaceSite           GUID 00000119-0000-0000-C000-000000000046
    IID_IOleInPlaceFrame          GUID 00000116-0000-0000-C000-000000000046
    IID_IDocHostUIHandler         GUID BD3F23C0-D43E-11CF-893B-00AA00BDCE1A
    IID_IInternetSecurityManager  GUID 79EAC9EE-BAF9-11CE-8C82-00AA004BA90B
    IID_IServiceProvider          GUID 6D5140C1-7436-11CE-8034-00AA006009FA
    IID_ICustomDoc                GUID 3050F3F0-98B5-11CF-BB82-00AA00BDCE0B
    DIID_DWebBrowserEvents2       GUID 34A715A0-6587-11D0-924A-0020AFC7AC4D
    DIID__IShockwaveFlashEvents   GUID D27CDB6D-AE6D-11CF-96B8-444553540000

    vtblIUnknown                  dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release

    vtblIOleClientSite            dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IOleClientSite@SaveObject
                                  dd IOleClientSite@GetMoniker
                                  dd IOleClientSite@GetContainer
                                  dd IOleClientSite@ShowObject
                                  dd IOleClientSite@OnShowWindow
                                  dd IOleClientSite@RequestNewObjectLayout

    vtblIOleInPlaceSite           dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IOleInPlaceSite@GetWindow
                                  dd IOleInPlaceSite@ContextSensitiveHelp
                                  dd IOleInPlaceSite@CanInPlaceActivate
                                  dd IOleInPlaceSite@OnInPlaceActivate
                                  dd IOleInPlaceSite@OnUIActivate
                                  dd IOleInPlaceSite@GetWindowContext
                                  dd IOleInPlaceSite@Scroll
                                  dd IOleInPlaceSite@OnUIDeactivate
                                  dd IOleInPlaceSite@OnInPlaceDeactivate
                                  dd IOleInPlaceSite@DiscardUndoState
                                  dd IOleInPlaceSite@DeactivateAndUndo
                                  dd IOleInPlaceSite@OnPosRectChange

    vtblIOleInPlaceFrame          dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IOleInPlaceFrame@GetWindow
                                  dd IOleInPlaceFrame@ContextSensitiveHelp
                                  dd IOleInPlaceFrame@GetBorder
                                  dd IOleInPlaceFrame@RequestBorderSpace
                                  dd IOleInPlaceFrame@SetBorderSpace
                                  dd IOleInPlaceFrame@SetActiveObject
                                  dd IOleInPlaceFrame@InsertMenus
                                  dd IOleInPlaceFrame@SetMenu
                                  dd IOleInPlaceFrame@RemoveMenus
                                  dd IOleInPlaceFrame@SetStatusText
                                  dd IOleInPlaceFrame@EnableModeless
                                  dd IOleInPlaceFrame@TranslateAccelerator

    vtblIDocHostUIHandler         dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IDocHostUIHandler@ShowContextMenu
                                  dd IDocHostUIHandler@GetHostInfo
                                  dd IDocHostUIHandler@ShowUI
                                  dd IDocHostUIHandler@HideUI
                                  dd IDocHostUIHandler@UpdateUI
                                  dd IDocHostUIHandler@EnableModeless
                                  dd IDocHostUIHandler@OnDocWindowActivate
                                  dd IDocHostUIHandler@OnFrameWindowActivate
                                  dd IDocHostUIHandler@ResizeBorder
                                  dd IDocHostUIHandler@TranslateAccelerator
                                  dd IDocHostUIHandler@GetOptionKeyPath
                                  dd IDocHostUIHandler@GetDropTarget
                                  dd IDocHostUIHandler@GetExternal
                                  dd IDocHostUIHandler@TranslateUrl
                                  dd IDocHostUIHandler@FilterDataObject

    vtblIWebBrowserEvents         dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IWebBrowserEvents@GetTypeInfoCount
                                  dd IWebBrowserEvents@GetTypeInfo
                                  dd IWebBrowserEvents@GetIDsOfNames
                                  dd IWebBrowserEvents@Invoke

    vtblIExternalDispatch         dd IExternalDispatch@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IExternalDispatch@GetTypeInfoCount
                                  dd IExternalDispatch@GetTypeInfo
                                  dd IExternalDispatch@GetIDsOfNames
                                  dd IExternalDispatch@Invoke

    vtblIInternetSecurityManager  dd IInternetSecurityManager@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IInternetSecurityManager@SetSecuritySite
                                  dd IInternetSecurityManager@GetSecuritySite
                                  dd IInternetSecurityManager@MapUrlToZone
                                  dd IInternetSecurityManager@GetSecurityId
                                  dd IInternetSecurityManager@ProcessUrlAction
                                  dd IInternetSecurityManager@QueryCustomPolicy
                                  dd IInternetSecurityManager@SetZoneMapping
                                  dd IInternetSecurityManager@GetZoneMappings

    vtblIServiceProvider          dd IUnknown@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IServiceProvider@QueryService

    vtblIActiveScriptSite         dd IActiveScriptSite@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IActiveScriptSite@GetLCID
                                  dd IActiveScriptSite@GetItemInfo
                                  dd IActiveScriptSite@GetDocVersionString
                                  dd IActiveScriptSite@OnScriptTerminate
                                  dd IActiveScriptSite@OnStateChange
                                  dd IActiveScriptSite@OnScriptError
                                  dd IActiveScriptSite@OnEnterScript
                                  dd IActiveScriptSite@OnLeaveScript

    vtblIActiveScriptSiteWindow   dd IActiveScriptSite@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IActiveScriptSiteWindow@GetWindow
                                  dd IActiveScriptSiteWindow@EnableModeless

    vtblIConsoleDispatch          dd IActiveScriptSite@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IConsoleDispatch@GetTypeInfoCount
                                  dd IConsoleDispatch@GetTypeInfo
                                  dd IConsoleDispatch@GetIDsOfNames
                                  dd IConsoleDispatch@Invoke

    vtblIShockwaveFlashEvents     dd IShockwaveFlashEvents@QueryInterface
                                  dd IUnknown@AddRef
                                  dd IUnknown@Release
                                  dd IShockwaveFlashEvents@GetTypeInfoCount
                                  dd IShockwaveFlashEvents@GetTypeInfo
                                  dd IShockwaveFlashEvents@GetIDsOfNames
                                  dd IShockwaveFlashEvents@Invoke

.end @start

;---------------------------------------------------------------------------------------------------------------------------

section '.rsrc' resource data readable
    directory RT_ACCELERATOR, accelerators,\
              RT_ICON, icons,\
              RT_GROUP_ICON, group_icons,\
              RT_VERSION, versions

    resource accelerators, ID_SHDOCLC_ACCEL, LANG_ENGLISH + SUBLANG_DEFAULT, vkeys
                        
    accelerator vkeys,\
                FVIRTKEY + FCONTROL, 'X', ID_CUT_CMD,\
                FVIRTKEY + FCONTROL, 'C', ID_COPY_CMD,\
                FVIRTKEY + FCONTROL, 'V', ID_PASTE_CMD,\
                FVIRTKEY + FCONTROL, 'Z', ID_UNDO_CMD,\
                FVIRTKEY + FCONTROL, 'W', ID_CLOSE_CMD

    resource group_icons, IDI_APPLICATION, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon

    resource icons,\
              1, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data1,\
              2, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data2,\
              3, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data3,\
              4, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data4,\
              5, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data5,\
              6, LANG_ENGLISH + SUBLANG_DEFAULT, main_icon_data6

    multi_icon main_icon,\
             main_icon_data1, 'main.ico', 0,\
             main_icon_data2, 'main.ico', 1,\
             main_icon_data3, 'main.ico', 2,\
             main_icon_data4, 'main.ico', 3,\
             main_icon_data5, 'main.ico', 4,\
             main_icon_data6, 'main.ico', 5

    resource versions, 1, LANG_ENGLISH + SUBLANG_DEFAULT, version

    versioninfo version, VOS__WINDOWS32, VFT_APP, VFT2_UNKNOWN, LANG_ENGLISH + SUBLANG_DEFAULT, 0,\
            'FileDescription', 'Command Console Tool (CCT)',\
            'LegalCopyright', '2018, José A. Rojo L.',\
            'FileVersion', '1.3.0.8',\
            'ProductVersion', '1.3.0.8',\
            'ProductName', 'cct',\
            'OriginalFilename', 'cct.exe'