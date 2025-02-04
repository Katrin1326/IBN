<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ResourcesEditor.ascx.cs" Inherits="Mediachase.Ibn.Web.UI.Calendar.Modules.ResourcesEditor" %>
<%@ Register TagPrefix="mc" TagName="MCGrid" Src="~/Apps/HelpDeskManagement/Modules/MCGrid.ascx" %>
<%@ Register TagPrefix="mc" TagName="EntityGrid" Src="~/Apps/MetaUIEntity/Grid/EntityGrid.ascx" %>
<%@ Register TagPrefix="mc" TagName="MCGridAction" Src="~/Apps/MetaUI/Grid/MetaGridServerEventAction.ascx" %>
<%@ Register TagPrefix="mc2" Assembly="Mediachase.Ibn.Web.UI.WebControls" Namespace="Mediachase.Ibn.Web.UI.WebControls" %>
<link rel="stylesheet" type="text/css" href='<%= Mediachase.Ibn.Web.UI.WebControls.McScriptLoader.Current.GetScriptUrl("~/Styles/IbnFramework/grid.css", this.Page) %>' />
<script type="text/javascript">
	var resizeFlag = false;
	function LayoutResizeHandler(sender, eventArgs)
	{
	}
	function CheckSelected()
	{
		var obj = $find('<%= grdMain.GridClientContainerId %>');
		var fl = true;
		if(obj)
		{
			var hdn = document.getElementById('<%=hdnValue.ClientID %>');
			if(obj.isCheckboxes())
			{
				if(!obj.isChecked())
				{
					if(obj.getSelectedElement() == "")
						fl = false;
					else
						hdn.value = obj.getSelectedElement();
				}
				else
					hdn.value = obj.getCheckedCollection();
			}
			else
			{
				if(obj.getSelectedElement() == "")
					fl = false;
				else
					hdn.value = obj.getSelectedElement();
			}
		}
		else
			fl = false;
		return fl;
	}
	
	function CheckSelectedForDelete()
	{
		var obj = $find('<%= grdMain_Selected.GridClientContainerId %>');
		var fl = true;
		if(obj)
		{
			var hdn = document.getElementById('<%=hdnValue.ClientID %>');
			if(obj.isCheckboxes())
			{
				if(!obj.isChecked())
				{
					if(obj.getSelectedElement() == "")
						fl = false;
					else
						hdn.value = obj.getSelectedElement();
				}
				else
					hdn.value = obj.getCheckedCollection();
			}
			else
			{
				if(obj.getSelectedElement() == "")
					fl = false;
				else
					hdn.value = obj.getSelectedElement();
			}
		}
		else
			fl = false;
		return fl;
	}
	
	function onAddSelected()
	{
		var fl = false;
		var email = document.getElementById('<%=txtEMail.ClientID %>');
		if(email && email.value != "")
			fl = true;
		if(CheckSelected() || fl)
			<%=Page.ClientScript.GetPostBackClientHyperlink(lbAdd, "") %>;
	}
	
	function onDelete()
	{
		if(CheckSelectedForDelete())
			<%=Page.ClientScript.GetPostBackClientHyperlink(lbDelete, "") %>;
	}
</script>
<style type="text/css">
	.hundred
	{
		height: 100%;
		width: 100%;
		position: absolute;
	}
	.innerArea
	{
	}
	.innerContentArea
	{
		background-color: White;
		border:1px solid #BBD4F6;
	}
	
	.pad5{
		padding: 5px;
	}
</style>
<mc2:McDock ID="DockBottom" runat="server" Anchor="Bottom" EnableSplitter="False" DefaultSize="40">
	<DockItems>
		<table cellspacing="0" cellpadding="0" border="0" width="100%" class="filter">
			<tr>
				<td style="padding:7px;" align="right">
					<mc2:IMButton id="btnSave" runat="server" style="width:105px;"></mc2:IMButton>&nbsp;
					<mc2:IMButton id="btnCancel" runat="server" style="width:105px;"></mc2:IMButton>
				</td>
			</tr>
		</table>
	</DockItems>
</mc2:McDock>
<mc2:McDock ID="DockTop" runat="server" Anchor="Top" EnableSplitter="False" DefaultSize="75">
	<DockItems>
		<asp:UpdatePanel ID="upTop" runat="server" UpdateMode="Conditional">
			<ContentTemplate>
				<table cellspacing="0" cellpadding="0" border="0" width="100%" class="filter">
					<tr>
						<td>
							<table cellspacing="0" cellpadding="0" border="0" class="filter">
								<tr style="height:33px;">
									<td style="padding:0px 5px;"><%=GetGlobalResourceObject("IbnFramework.Global", "_mc_Type").ToString() %>:</td>
									<td style="padding:0px 5px;">
										<asp:DropDownList runat="server" ID="ddFilter" AutoPostBack="true" Width="200px" />&nbsp;
									</td>
									<td style="padding:3px;width:150px;" align="right"><%=LocRM.GetString("Search") %>:</td>
									<td style="padding:3px;">
										<asp:TextBox runat="server" ID="tbSearchString" Width="200px"></asp:TextBox>
										<asp:ImageButton Runat="server" id="btnSearch" Width="16" Height="16" ImageUrl="~/layouts/images/search.gif" ImageAlign="AbsMiddle" OnClick="btnSearch_Click" />
										<asp:ImageButton runat="server" ID="btnClear" Width="19" Height="17" ImageUrl="~/Layouts/Images/reset17.gif" ImageAlign="AbsMiddle" OnClick="btnClear_Click" />	
									</td>
								</tr>
								<tr style="height:33px;">
									<td></td>
									<td></td>
									<td style="padding:3px;" align="right"><%=GetGlobalResourceObject("IbnFramework.Global", "EMail").ToString() %>:</td>
									<td style="padding:3px;">
										<asp:TextBox runat="server" ID="txtEMail" Width="200px"></asp:TextBox>
										<asp:regularexpressionvalidator id="reEMail" runat="server" ErrorMessage="*" ControlToValidate="txtEMail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Static"></asp:regularexpressionvalidator>
										<asp:Button ID="btnEmailAdd" runat="server" Width="40px" Text="+" OnClientClick="onAddSelected();return false;" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<asp:HiddenField ID="hdnValue" runat="server" />
				<asp:Button ID="lbAdd" runat="server" style="display:none;" OnClick="lbAdd_Click"></asp:Button>
				<asp:Button ID="lbDelete" runat="server" style="display:none;" OnClick="lbDelete_Click"></asp:Button>
			</ContentTemplate>
		</asp:UpdatePanel>
	</DockItems>
</mc2:McDock>
<mc2:McDock ID="DockRight" runat="server" Anchor="Right" EnableSplitter="False" DefaultSize="330">
	<DockItems>
		<table style="margin-top:0px; padding-top: 0px; table-layout: fixed;" cellspacing="0" cellpadding="0" border="0" width="100%" class="ibn-propertysheet">
			<tr>
				<td style="padding-left: 5px;" class="filter">
					<asp:UpdatePanel ID="grdMainSelectedPanel" runat="server" UpdateMode="Conditional">
						<ContentTemplate>
							<mc:MCGrid ID="grdMain_Selected" runat="server" ShowPaging="false" PostBackRender="true" />	
							<mc:MCGridAction runat="server" ID="ctrlGridEventUpdater_Selected"  />
						</ContentTemplate>
					</asp:UpdatePanel>
				</td>
			</tr>
		</table>
	</DockItems>
</mc2:McDock>	
<mc2:McDock ID="DockRightCenter" runat="server" Anchor="Right" EnableSplitter="False" DefaultSize="40">
	<DockItems>
		<div style="height: 100%; width: 100%; position: relative;" class="filter ibn-propertysheet">
			<div style="position: absolute; left:0px; bottom: 0px; top: 104px; right:0px;" class="innerArea">
				<asp:Button ID="btnAdd" runat="server" Width="40px" Text=">" OnClientClick="onAddSelected();return false;" />
				<br /><br />
				<asp:Button ID="btnDelete" runat="server" Width="40px" Text="<" OnClientClick="onDelete();return false;" />
			</div>
		</div>
	</DockItems>
</mc2:McDock>
<table style="margin-top:0px; padding-top: 0px; table-layout: fixed;" cellspacing="0" cellpadding="0" border="0" width="100%" class="ibn-propertysheet">
	<tr>
		<td style="padding-left: 5px;" class="filter">
			<asp:UpdatePanel ID="grdMainPanel" runat="server" UpdateMode="Conditional">
				<ContentTemplate>
					<mc:EntityGrid ID="grdMain" runat="server" ShowPaging="false" />	
					<mc:MCGridAction runat="server" ID="ctrlGridEventUpdater"/>
				</ContentTemplate>
			</asp:UpdatePanel>
		</td>
	</tr>
</table>