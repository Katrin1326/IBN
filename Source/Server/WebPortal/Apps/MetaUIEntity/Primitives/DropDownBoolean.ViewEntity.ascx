﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="Mediachase.Ibn.Web.UI.Controls.Util.BaseEntityType" ClassName="Mediachase.Ibn.Web.UI.MetaUI.EntityPrimitives.DropDownBoolean_ViewEntity" %>
<%@ Import Namespace="Mediachase.Ibn.Core" %>
<%@ Import Namespace="Mediachase.Ibn.Data.Meta" %>
<%@ Import Namespace="Mediachase.Ibn.Data.Meta.Management" %>
<%@ Import Namespace="Mediachase.Ibn.Web.UI" %>
<script runat="server" language="c#">
	public string GetValue()
	{
		string retval = string.Empty;
		if (DataItem != null && DataItem.Properties[FieldName] != null)
		{
			if (DataItem[FieldName] != null)
			{
				MetaField mf = MetaDataWrapper.GetMetaFieldByName(DataItem.MetaClassName, FieldName);
				if (mf.IsReferencedField)
				{
					string refClassName = mf.Attributes.GetValue<string>(McDataTypeAttribute.ReferenceMetaClassName);
					string refFieldName = mf.Attributes.GetValue<string>(McDataTypeAttribute.ReferencedFieldMetaFieldName);
					mf = MetaDataWrapper.GetMetaFieldByName(refClassName, refFieldName);
				}

				if ((bool)DataItem[FieldName])
					retval = mf.Attributes[McDataTypeAttribute.BooleanTrueText].ToString();
				else
					retval = mf.Attributes[McDataTypeAttribute.BooleanFalseText].ToString();
				retval = CHelper.GetResFileString(retval);
			}
		}
		return retval;
	}
</script>
<%# GetValue() %>
