<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="IntegerPercent.Edit.ascx.cs" Inherits="Mediachase.UI.Web.Apps.MetaUI.Primitives.IntegerPercent_Edit" %>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="ibn-propertysheet">
	<tr>
		<td style="padding-right:3px;">
			<asp:TextBox id="txtValue" runat="server" CssClass="text" Wrap="False" Width="99%"></asp:TextBox>
		</td>
		<td style="width:20px;">
			<asp:RequiredFieldValidator id="vldValue_Required" runat="server" ErrorMessage="*" ControlToValidate="txtValue"	Display="Dynamic"></asp:RequiredFieldValidator>
			<asp:RangeValidator ID="vldValue_Range" Runat="server" MinimumValue="-0" MaximumValue="100" Type="Integer" ErrorMessage="*" ControlToValidate="txtValue" Display=Dynamic></asp:RangeValidator>
		</td>
	</tr>
</table>