using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using core.digitalxs.servs;
using System.Web.Security;

public partial class kittycat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if(Sec.ChallengeCredentials(txtUser.Text,txtPassword.Text))
        {
            Session["UserName"] = txtUser.Text;
            Session["UserID"] = txtUser.Text;
           
            //Creting a Cookie Object
            HttpCookie _userInfoCookies = new HttpCookie("kit-cat");

            //Setting values inside it
            _userInfoCookies["UserName"] = txtUser.Text;
            _userInfoCookies["UserID"] = txtUser.Text;
           
            //Adding Expire Time of cookies
            _userInfoCookies.Expires = DateTime.Now.AddDays(5);

            //Adding cookies to current web response
            Response.Cookies.Add(_userInfoCookies);
            
            FormsAuthentication.SetAuthCookie(txtUser.Text, true);
            FormsAuthentication.RedirectFromLoginPage(txtUser.Text, true);
        }
    }
}