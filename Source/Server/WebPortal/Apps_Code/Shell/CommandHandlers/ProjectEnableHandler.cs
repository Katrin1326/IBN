﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using Mediachase.IBN.Business;
using Mediachase.Ibn.Web.UI.WebControls;

namespace Mediachase.Ibn.Web.UI.Shell.CommandHandlers
{
	public class ProjectEnableHandler : ICommandEnableHandler
	{
		#region ICommandEnableHandler Members
		public bool IsEnable(object Sender, object Element)
		{
			bool retval = false;

			if (Mediachase.IBN.Business.Configuration.ProjectManagementEnabled &&
					(Mediachase.IBN.Business.Security.IsUserInGroup(InternalSecureGroups.PowerProjectManager)
					|| Mediachase.IBN.Business.Security.IsUserInGroup(InternalSecureGroups.ProjectManager))
				)
			{
				retval = true;
			}

			return retval;
		}
		#endregion
	}
}
