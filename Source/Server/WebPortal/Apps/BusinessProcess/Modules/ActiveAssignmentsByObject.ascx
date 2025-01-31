﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActiveAssignmentsByObject.ascx.cs" Inherits="Mediachase.Ibn.Web.UI.BusinessProcess.Modules.ActiveAssignmentsByObject" %>
<%@ Register TagPrefix="ibn" Namespace="Mediachase.Ibn.Web.UI.WebControls" Assembly="Mediachase.Ibn.Web.UI.WebControls"%>
<%@ Import Namespace="Mediachase.Ibn.Assignments" %>
<script type="text/javascript">
	function RefreshAssignments(params)
	{
		<%=Page.ClientScript.GetPostBackEventReference(RefreshButton,"") %>;
	}
</script>
<div style="margin-top:5px;">
	<ibn:BlockHeaderLight2 ID="MainHeader" runat="server" HeaderCssClass="ibn-toolbar-light" Title="<%$Resources : IbnFramework.BusinessProcess, ActiveAssignments%>" />
</div>
<table class="ibn-stylebox-light" cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td style="padding:5px;" class="text">
			<asp:placeholder id="MainPlaceHolder" runat="server"></asp:placeholder>
		</td>
	</tr>
	<tr runat="server" id="DelimiterRow">
		<td>
			<div class="ibn-bottomBlock"></div>
		</td>
	</tr>
	<tr>
		<td style="padding:5px;" class="text">
			<asp:GridView runat="server" ID="AssignmentGrid" AllowPaging="false" 
				AllowSorting="false" AutoGenerateColumns="false" Width="100%" GridLines="None" 
				CellPadding="3" onrowdatabound="AssignmentGrid_RowDataBound">
				<Columns>
					<asp:TemplateField HeaderText="<%$ Resources: IbnFramework.BusinessProcess, Subject %>">
						<ItemTemplate>
							<%# Mediachase.Ibn.Web.UI.CHelper.GetActiveAssignmentLinkWithIcon(
								Eval("PrimaryKeyId").ToString(),
								!String.IsNullOrEmpty((string)Eval(AssignmentEntity.FieldSubject)) ? (string)Eval(AssignmentEntity.FieldSubject) : GetGlobalResourceObject("IbnFramework.BusinessProcess", "NoSubject").ToString(),
								(int)Mediachase.IBN.Business.ObjectTypes.Document,
								OwnerId,
								(int)Mediachase.IBN.Business.ObjectStates.Active,
								(int?)Eval(AssignmentEntity.FieldTimeStatus) == (int)AssignmentTimeStatus.OverDue,
								this.Page
								)%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="<%$ Resources: IbnFramework.BusinessProcess, Participant %>">
						<ItemTemplate>
							<%# Mediachase.UI.Web.Util.CommonHelper.GetUserStatus((int)Eval(AssignmentEntity.FieldUserId))%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="<%$ Resources: IbnFramework.BusinessProcess, DueDate %>">
						<ItemTemplate>
							<%# GetDateString(Eval(AssignmentEntity.FieldPlanFinishDate))%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderStyle-Width="40" ItemStyle-Width="40">
						<ItemTemplate>
							<asp:ImageButton runat="server" ID="ReassignButton" ImageUrl="~/Images/IbnFramework/Reassign.png" ToolTip="<%$ Resources: IbnFramework.BusinessProcess, Reassign %>"/>&nbsp;
							<asp:ImageButton runat="server" ID="EditButton" ImageUrl="~/layouts/images/edit.gif" ToolTip="<%$ Resources: IbnFramework.Common, Edit %>"/>
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
			</asp:GridView>
		</td>
	</tr>
</table>
<asp:Button runat="server" ID="RefreshButton" onclick="RefreshButton_Click" Visible="false" />