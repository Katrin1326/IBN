﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mediachase.Ibn.Web.UI.BusinessProcess.Pages
{
	public partial class WorkFlowInstanceSchema : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			pT.Title = GetGlobalResourceObject("IbnFramework.BusinessProcess", "WorkflowSchema").ToString();
		}
	}
}
