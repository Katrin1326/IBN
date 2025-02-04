﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RelationNNEdit.ascx.cs" Inherits="Mediachase.Ibn.Web.UI.Apps.MetaDataBase.Modules.ManageControls.RelationNNEdit" %>
<%@ Reference Control="~/Apps/Common/Design/BlockHeader2.ascx" %>
<%@ Register TagPrefix="ibn" TagName="BlockHeader" Src="~/Apps/Common/Design/BlockHeader2.ascx" %>
<%@ Register TagPrefix="ibn" Assembly="Mediachase.Ibn.Web.UI.WebControls" Namespace="Mediachase.Ibn.Web.UI.WebControls"%>

<asp:UpdatePanel runat="server" ID="UpdatePanel1">
	<ContentTemplate>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="ibn-stylebox2">
	<tr>
		<td><ibn:BlockHeader id="MainBlockHeader" runat="server" /></td>
	</tr>
	<tr>
		<td style="padding:5px;">
			<ibn:BlockHeaderLight2 runat="server" id="InfoBlockHeader" Title="<%$Resources : IbnFramework.GlobalMetaInfo, GeneralInfo%>" HeaderCssClass="ibn-toolbar-light"></ibn:BlockHeaderLight2>
			<div class="ibn-stylebox-light" style="padding:10px; padding-top:5px;">
				<table cellpadding="5" cellspacing="0" border="0" class="ibn-propertysheet" style="table-layout:fixed;">
					<tr>
						<td class="ibn-label" style="width:170px;">
							<asp:Literal ID="Literal4" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, CurrentObject%>" />:
						</td>
						<td style="width:410px;">
							<asp:HyperLink runat="server" ID="CurrentObjectLink"></asp:HyperLink>
						</td>
						<td style="width:20px"></td>
					</tr>
					<tr>
						<td class="ibn-label">
							<asp:Literal ID="Literal5" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, RelatedObject%>" />:
						</td>
						<td>
							<ibn:indenteddropdownlist runat="server" ID="RelatedObjectList" Width="400px" AutoPostBack="true" OnSelectedIndexChanged="RelatedObjectList_SelectedIndexChanged"></ibn:indenteddropdownlist>
						</td>
						<td style="width:20px"></td>
					</tr>
					<tr>
						<td class="ibn-label" style="width:170px;" valign="top">
							<asp:Literal ID="Literal9" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, RelationName%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="NameTextBox" Width="400" MaxLength="50"></asp:TextBox>
							<asp:RegularExpressionValidator ID="NameRegExValidator" ControlToValidate="NameTextBox" Runat="server" Display="Dynamic" ErrorMessage="<%$Resources : IbnFramework.GlobalMetaInfo, LatinOnlyError%>" ValidationExpression="^[A-Za-z0-9](\w)*$"></asp:RegularExpressionValidator>
							<asp:Label Runat="server" ID="ErrorMessage" CssClass="ibn-error" Font-Bold="true"></asp:Label>
						</td>
						<td>
							<asp:RequiredFieldValidator id="NameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="NameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr>
						<td class="ibn-label">
							<asp:Literal ID="Literal10" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, FriendlyName%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="FriendlyNameTextBox" Width="400" MaxLength="100"></asp:TextBox>
						</td>
						<td>
							<asp:RequiredFieldValidator id="FriendlyNameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="FriendlyNameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr runat="server" id="CurrentRow">
		<td style="padding:5px; padding-top:0px;">
			<ibn:BlockHeaderLight2 runat="server" id="CurrentBlockHeader" HeaderCssClass="ibn-toolbar-light"></ibn:BlockHeaderLight2>
			<div class="ibn-stylebox-light" style="padding:10px; padding-top:5px;">
				<table cellpadding="5" cellspacing="0" border="0" class="ibn-propertysheet" style="table-layout:fixed;">
					<tr>
						<td class="ibn-label" style="width:170px;">
							<asp:Literal ID="Literal6" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayRegion%>" />:
						</td>
						<td style="width:410px;">
							<asp:DropDownList runat="server" ID="CurrentDisplayRegion" Width="400" AutoPostBack="true" OnSelectedIndexChanged="CurrentDisplayRegion_SelectedIndexChanged"></asp:DropDownList>
						</td>
						<td style="width:20px;"></td>
					</tr>
					<tr runat="server" id="CurrentDisplayTextRow">
						<td class="ibn-label">
							<asp:Literal ID="Literal7" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayText%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="CurrentDisplayText" Width="400" MaxLength="100"></asp:TextBox>
						</td>
						<td>
							<asp:RequiredFieldValidator id="CurrentDisplayTextRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="CurrentDisplayText" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr runat="server" id="CurrentDisplayOrderRow">
						<td class="ibn-label">
							<asp:Literal ID="Literal8" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayOrder%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="CurrentDisplayOrderText" Width="400" MaxLength="6" Text="10000"></asp:TextBox>
							<asp:RangeValidator runat="server" ID="CurrentDisplayOrderRangeValidator" ControlToValidate="CurrentDisplayOrderText" CultureInvariantValues="true" Type="Integer" MinimumValue="0" MaximumValue="999999" ErrorMessage="*" Display="Dynamic"></asp:RangeValidator>
						</td>
						<td>
							<asp:RequiredFieldValidator id="CurrentDisplayOrderTextRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="CurrentDisplayOrderText" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr runat="server" id="RelatedRow">
		<td style="padding:5px; padding-top:0px;">
			<ibn:BlockHeaderLight2 runat="server" id="RelatedBlockHeader" HeaderCssClass="ibn-toolbar-light"></ibn:BlockHeaderLight2>
			<div class="ibn-stylebox-light" style="padding:10px; padding-top:5px;">
				<table cellpadding="5" cellspacing="0" border="0" class="ibn-propertysheet" style="table-layout:fixed;">
					<tr>
						<td class="ibn-label" style="width:170px;">
							<asp:Literal ID="Literal1" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayRegion%>" />:
						</td>
						<td style="width:410px;">
							<asp:DropDownList runat="server" ID="RelatedDisplayRegion" Width="400" AutoPostBack="true" OnSelectedIndexChanged="RelatedDisplayRegion_SelectedIndexChanged"></asp:DropDownList>
						</td>
						<td style="width:20px;"></td>
					</tr>
					<tr runat="server" id="RelatedDisplayTextRow">
						<td class="ibn-label">
							<asp:Literal ID="Literal2" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayText%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="RelatedDisplayText" Width="400" MaxLength="100"></asp:TextBox>
						</td>
						<td>
							<asp:RequiredFieldValidator id="RelatedDisplayTextRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="RelatedDisplayText" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr runat="server" id="RelatedDisplayOrderRow">
						<td class="ibn-label">
							<asp:Literal ID="Literal3" runat="server" Text="<%$Resources : IbnFramework.GlobalMetaInfo, DisplayOrder%>" />:
						</td>
						<td>
							<asp:TextBox Runat="server" ID="RelatedDisplayOrderText" Width="400" MaxLength="6" Text="10000"></asp:TextBox>
							<asp:RangeValidator runat="server" ID="RelatedDisplayOrderRangeValidator" ControlToValidate="RelatedDisplayOrderText" CultureInvariantValues="true" Type="Integer" MinimumValue="0" MaximumValue="999999" ErrorMessage="*" Display="Dynamic"></asp:RangeValidator>
						</td>
						<td>
							<asp:RequiredFieldValidator id="RelatedDisplayOrderTextRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="RelatedDisplayOrderText" Display="Dynamic"></asp:RequiredFieldValidator>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr>
		<td style="padding-left:170px; padding-top:5px; padding-bottom:10px;">	
			<ibn:IMButton runat="server" class="text" style="width:110px" ID="SaveButton" Text="<%$Resources : IbnFramework.GlobalMetaInfo, Save%>" OnServerClick="SaveButton_ServerClick"></ibn:IMButton>&nbsp;&nbsp;
			<ibn:IMButton runat="server" class="text" style="width:110px" ID="CancelButton" Text="<%$Resources : IbnFramework.GlobalMetaInfo, Cancel%>" CausesValidation="false" IsDecline="True"></ibn:IMButton>
		</td>
	</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>