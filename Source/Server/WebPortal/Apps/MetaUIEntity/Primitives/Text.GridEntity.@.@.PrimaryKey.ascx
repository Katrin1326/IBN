<%@ Control Language="C#" AutoEventWireup="true" Inherits="Mediachase.Ibn.Web.UI.Controls.Util.BaseEntityType" ClassName="Mediachase.Ibn.Web.UI.MetaUI.EntityPrimitives.Text_GridEntity_All_All_PrimaryKey" %>
<%@ Import Namespace="Mediachase.Ibn.Core.Business" %>
<script language="c#" runat="server">
	protected string GetValue(EntityObject DataItem, string FieldName)
    {
		string retVal = "";

		if (DataItem == null)
		{
			retVal = "null";
		}
		else
		{
			if (DataItem.PrimaryKeyId == null)
				retVal = "0";
			else
				retVal = DataItem.PrimaryKeyId.ToString();
		}

        return retVal;
    }
</script>
<%# GetValue(DataItem, FieldName) %>