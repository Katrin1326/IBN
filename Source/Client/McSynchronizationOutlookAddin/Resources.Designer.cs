﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OutlookAddin {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("OutlookAddin.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Folder not correctly selected..
        /// </summary>
        internal static string DBG_OUTLOOK_FOLDER_NOT_SELECTED {
            get {
                return ResourceManager.GetString("DBG_OUTLOOK_FOLDER_NOT_SELECTED", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to addin error.
        /// </summary>
        internal static string ERR_ADDIN_UNKNOW {
            get {
                return ResourceManager.GetString("ERR_ADDIN_UNKNOW", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Selected folder is not a {0}  folder..
        /// </summary>
        internal static string ERR_OUTLOOK_BAD_FOLDER_TYPE {
            get {
                return ResourceManager.GetString("ERR_OUTLOOK_BAD_FOLDER_TYPE", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to connection to server error.
        /// </summary>
        internal static string ERR_SYNC_CONNECTION {
            get {
                return ResourceManager.GetString("ERR_SYNC_CONNECTION", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to auth failed.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_AUTH_FAILED {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_AUTH_FAILED", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to sync framework error.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_FRAMEWORK {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_FRAMEWORK", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to sync provider error.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_INVALID_PROVIDER {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_INVALID_PROVIDER", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to invalid url.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_INVALID_URL {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_INVALID_URL", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Not authentificated.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_NOT_AUTH {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_NOT_AUTH", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to remote provider error.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_PROVIDER {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_PROVIDER", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to server error.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_SERVER {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_SERVER", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to unknow service error.
        /// </summary>
        internal static string ERR_SYNC_SERVICE_UKNOW {
            get {
                return ResourceManager.GetString("ERR_SYNC_SERVICE_UKNOW", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to {0} conflicted with  {1}.
        /// </summary>
        internal static string FormConflictResolution_Caption_Pattern {
            get {
                return ResourceManager.GetString("FormConflictResolution_Caption_Pattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to IBN server connection .
        /// </summary>
        internal static string FormSetting_Connection_Caption {
            get {
                return ResourceManager.GetString("FormSetting_Connection_Caption", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Local wins.
        /// </summary>
        internal static string FormSetting_Sync_ConflictPolicy_LocalWins {
            get {
                return ResourceManager.GetString("FormSetting_Sync_ConflictPolicy_LocalWins", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Remote wins.
        /// </summary>
        internal static string FormSetting_Sync_ConflictPolicy_RemoteWins {
            get {
                return ResourceManager.GetString("FormSetting_Sync_ConflictPolicy_RemoteWins", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Remote -&gt; Local.
        /// </summary>
        internal static string FormSetting_Sync_Direction_Download {
            get {
                return ResourceManager.GetString("FormSetting_Sync_Direction_Download", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Local &lt;-&gt; Remote.
        /// </summary>
        internal static string FormSetting_Sync_Direction_DownloadAndUpload {
            get {
                return ResourceManager.GetString("FormSetting_Sync_Direction_DownloadAndUpload", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Local -&gt; Remote.
        /// </summary>
        internal static string FormSetting_Sync_Direction_Upload {
            get {
                return ResourceManager.GetString("FormSetting_Sync_Direction_Upload", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Remote &lt;-&gt; Local.
        /// </summary>
        internal static string FormSetting_Sync_Direction_UploadAndDownload {
            get {
                return ResourceManager.GetString("FormSetting_Sync_Direction_UploadAndDownload", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to not selected.
        /// </summary>
        internal static string FormSetting_Sync_RemoteFolder_NotSet {
            get {
                return ResourceManager.GetString("FormSetting_Sync_RemoteFolder_NotSet", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to IBN setting.
        /// </summary>
        internal static string FormSettingMenuSidebar_Caption {
            get {
                return ResourceManager.GetString("FormSettingMenuSidebar_Caption", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Sync error - {0}.
        /// </summary>
        internal static string FormSyncmenuItem_FailStatus_Pattern {
            get {
                return ResourceManager.GetString("FormSyncmenuItem_FailStatus_Pattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Not synchronized.
        /// </summary>
        internal static string FormSyncMenuItem_NotSyncStatus_Pattern {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_NotSyncStatus_Pattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to connecting to server....
        /// </summary>
        internal static string FormSyncMenuItem_ProcessStatus {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_ProcessStatus", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to {0} {1,10} completed {2,3}%.
        /// </summary>
        internal static string FormSyncMenuItem_ProcessStatus_Pattern1 {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_ProcessStatus_Pattern1", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to {0} {1,10} processed ({2} of {3}).
        /// </summary>
        internal static string FormSyncMenuItem_ProcessStatus_Pattern2 {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_ProcessStatus_Pattern2", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Last sync: {0:F}.
        /// </summary>
        internal static string FormSyncMenuItem_ReadyStatus_Pattern {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_ReadyStatus_Pattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to found {0} skipped changes .
        /// </summary>
        internal static string FormSyncMenuItem_SkippedItemPattern {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_SkippedItemPattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Calendar.
        /// </summary>
        internal static string FormSyncMenuItem_TextCalendar {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_TextCalendar", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Contact.
        /// </summary>
        internal static string FormSyncMenuItem_TextContact {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_TextContact", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Note.
        /// </summary>
        internal static string FormSyncMenuItem_TextNote {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_TextNote", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Task.
        /// </summary>
        internal static string FormSyncMenuItem_TextTask {
            get {
                return ResourceManager.GetString("FormSyncMenuItem_TextTask", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Upload(applied {0}/ failed {1}/ total {2}) Download(applied {3}/ failed {4}/ total {5}) .
        /// </summary>
        internal static string FormSyncMenuStatusStrip_Pattern {
            get {
                return ResourceManager.GetString("FormSyncMenuStatusStrip_Pattern", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Custom.
        /// </summary>
        internal static string FromSetting_Sync_ConflictPolicy_Custom {
            get {
                return ResourceManager.GetString("FromSetting_Sync_ConflictPolicy_Custom", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to IBN synchronize.
        /// </summary>
        internal static string FromSyncMenuSidebar_Caption {
            get {
                return ResourceManager.GetString("FromSyncMenuSidebar_Caption", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to /WebServices/IbnSynchronizationService.asmx.
        /// </summary>
        internal static string System_IbnSyncWebServicePath {
            get {
                return ResourceManager.GetString("System_IbnSyncWebServicePath", resourceCulture);
            }
        }
    }
}
