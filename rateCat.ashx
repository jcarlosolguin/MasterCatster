<%@ WebHandler Language="C#" Class="rateCat" %>

using System;
using System.Web;

public class rateCat : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write(context.Request.QueryString["id"]);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}