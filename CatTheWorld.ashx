<%@ WebHandler Language="C#" Class="CatTheWorld" %>

using System;
using System.Web;
using AutoMate;
using Commons.DL;
using System.Data.SqlClient;

public class CatTheWorld : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write("SUCCESSLOL");
        context.Response.Write(context.Server.MapPath("~"));//context.Request.PhysicalApplicationPath);
        _ld(context);
    }
    private void _ld(HttpContext context)
    {
        string _cmd = context.Request.QueryString["cmd"];
        string _n=context.Request.QueryString["n"];
        string _id = context.Request.QueryString["id"];
        string _sub = context.Request.QueryString["sub"];
        string _order = context.Request.QueryString["order"];
        if(context.Request.QueryString["cmd"]!=null)
        {
            if (_cmd.ToLower().Equals("runmacro"))
            {
                if(_id!=null)
                __runMacro(int.Parse(_id));
            }
            if (_cmd.ToLower().Equals("runsub"))
            {
                if (_n != null&&_sub!=null&&_order!=null)
                    __runSub(_sub,_order,int.Parse(_n));
            }
            if (_cmd.ToLower().Equals("killall"))
            {
                __killall();
            }
        }
        
    }
    private void __killall()
    {
        DBManager dbm = new DBManager("local");
        string _query = @"USE [CatSnatch]


/****** Object:  Table [dbo].[CS_AutoMeta]    Script Date: 12/13/2015 9:54:10 AM ******/
DROP TABLE [dbo].[CS_AutoMeta]


/****** Object:  Table [dbo].[CS_AutoMeta]    Script Date: 12/13/2015 9:54:10 AM ******/
SET ANSI_NULLS ON


SET QUOTED_IDENTIFIER ON


SET ANSI_PADDING ON


CREATE TABLE [dbo].[CS_AutoMeta](
	[_ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[ContentType] [varchar](200) NULL,
	[ContentConfidence] [int] NULL,
	[ContentFromTitle] [varchar](200) NULL,
	[TopCommentOnSource] [varchar](500) NULL,
	[ContentSubtype] [varchar](200) NULL,
	[OCConfidence] [int] NULL
) ON [PRIMARY]



SET ANSI_PADDING OFF


USE [CatSnatch]


/****** Object:  Table [dbo].[CS_ImageDesc]    Script Date: 12/13/2015 9:54:29 AM ******/
DROP TABLE [dbo].[CS_ImageDesc]


/****** Object:  Table [dbo].[CS_ImageDesc]    Script Date: 12/13/2015 9:54:29 AM ******/
SET ANSI_NULLS ON


SET QUOTED_IDENTIFIER ON


SET ANSI_PADDING ON


CREATE TABLE [dbo].[CS_ImageDesc](
	[_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](300) NULL,
	[Description] [varchar](800) NULL,
	[FullURL] [varchar](300) NULL,
	[Site] [varchar](100) NULL,
	[IMGURL] [varchar](300) NULL,
	[ContextURL] [varchar](300) NULL,
	[LocalIMGURL] [varchar](300) NULL,
	[FileType] [varchar](200) NULL,
	[ParentPostID] [int] NULL
) ON [PRIMARY]



SET ANSI_PADDING OFF







USE [CatSnatch]


/****** Object:  Table [dbo].[CS_ManualMeta]    Script Date: 12/13/2015 9:54:43 AM ******/
DROP TABLE [dbo].[CS_ManualMeta]


/****** Object:  Table [dbo].[CS_ManualMeta]    Script Date: 12/13/2015 9:54:43 AM ******/
SET ANSI_NULLS ON


SET QUOTED_IDENTIFIER ON


SET ANSI_PADDING ON


CREATE TABLE [dbo].[CS_ManualMeta](
	[_ID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[Title] [varchar](200) NULL,
	[Description] [varchar](800) NULL,
	[Tags] [varchar](300) NULL,
	[ContentType] [varchar](200) NULL,
	[ContentSubtype] [varchar](200) NULL
) ON [PRIMARY]



SET ANSI_PADDING OFF




USE [CatSnatch]


/****** Object:  Table [dbo].[CS_OriginalPost]    Script Date: 12/13/2015 9:54:52 AM ******/
DROP TABLE [dbo].[CS_OriginalPost]


/****** Object:  Table [dbo].[CS_OriginalPost]    Script Date: 12/13/2015 9:54:52 AM ******/
SET ANSI_NULLS ON


SET QUOTED_IDENTIFIER ON


SET ANSI_PADDING ON


CREATE TABLE [dbo].[CS_OriginalPost](
	[_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](300) NULL,
	[Description] [varchar](800) NULL,
	[FullURL] [varchar](300) NULL,
	[Site] [varchar](100) NULL,
	[IMGURL] [varchar](300) NULL,
	[ContextURL] [varchar](300) NULL,
	[LocalIMGURL] [varchar](300) NULL,
	[NLikes] [int] NULL,
	[OPName] [varchar](100) NULL,
	[OPUserLink] [varchar](300) NULL,
	[_Date] [datetime] NULL,
	[FileType] [varchar](200) NULL,
	[HasAlbum] [bit] NULL,
	[ParentPostID] [int] NULL,
	[IDOnSource] [varchar](300) NULL,
	[ResourceError] [varchar](200) NULL
) ON [PRIMARY]



SET ANSI_PADDING OFF


";
        dbm.ExecuteNonQuery(_query);
        dbm.Kill();
    }
    private void __runSub(string sub, string order, int count)
    {
        Central.StartSubreddit(sub, order, count);
    }
    private void __runMacro(int id)
    {
        Central.StartMacro(id);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}