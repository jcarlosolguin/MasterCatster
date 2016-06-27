<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        core.digitalxs.Com.__sys = core.digitalxs.sysName.MasterCatster;
        AutoMate.Central.Server = Server;
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    void Application_BeginRequest(object sender, EventArgs e)
    {
        HttpApplication app = (HttpApplication)sender;
        if (app.Request.Url.AbsolutePath.Contains("caticulo/"))
        {
            app.Context.RewritePath("/Demo.aspx");
        }
        if (app.Request.Url.AbsolutePath.Contains("pikit/"))
        {
            app.Context.RewritePath("/Demo.aspx");
        }
    }

</script>
