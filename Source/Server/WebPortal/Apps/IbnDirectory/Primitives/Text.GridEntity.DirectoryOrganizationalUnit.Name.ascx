<%@ Control Language="C#" AutoEventWireup="true" Inherits="Mediachase.Ibn.Web.UI.Controls.Util.BaseEntityType" ClassName="Mediachase.Ibn.Web.UI.IbnDirectory.Primitives.Text_GridEntity_DirectoryOrganizationalUnit_Name" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="Mediachase.Ibn.Data" %>
<%@ Import Namespace="Mediachase.Ibn.Core" %>
<%@ Import Namespace="Mediachase.Ibn.Core.Business" %>
<%@ Import Namespace="Mediachase.Ibn.Data.Meta" %>
<%@ Import Namespace="Mediachase.Ibn.Data.Meta.Management" %>
<%@ Import Namespace="Mediachase.Ibn.Web.UI.Controls.Util" %>
<%@ Import Namespace="Mediachase.Ibn.Web.UI.WebControls" %>
<%@ Import Namespace="Mediachase.IBN.Business.WebDAV.Common" %>
<script language="c#" runat="server">
	protected string GetValue(EntityObject DataItem, string FieldName)
	{
		string retval = String.Empty;
		if (DataItem != null && DataItem.Properties[FieldName] != null && DataItem.Properties[FieldName].Value != null)
		{
			retval = GetLinkForTitleField(DataItem, FieldName, DataItem.Properties[FieldName].Value.ToString());
		}
		return retval;
	}

	private string GetLinkForTitleField(EntityObject mo, string fieldName, string text)
	{
		string retval = text;
		string url = ResolveClientUrl("~/Apps/MetaUIEntity/Pages/EntityView.aspx?ClassName=" + mo.MetaClassName + "&ObjectId=" + mo.PrimaryKeyId.Value.ToString());
		FileInfo fi = (FileInfo)mo["Icon"];
		int level = (int)mo["OutlineLevel"];
		level--;
		retval = String.Format(CultureInfo.InvariantCulture, "<span style='padding-left:{3}px;'><a href='{0}'><img src='{2}' alt='' align='absmiddle' /> {1}</a></span>",
			url, CHelper.GetResFileString(text), WebDavUrlBuilder.GetMetaDataWebDavUrl(fi.FileUID, true), (level * 20).ToString());
		return retval;
	}
</script>
<%# GetValue(DataItem, FieldName) %>