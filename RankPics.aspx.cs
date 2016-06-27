using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Web.Script.Serialization;
using AutoMate;

public partial class RankPics : System.Web.UI.Page
{
    private string __img= @"<div class='col-lg-3 col-md-3 col-sm-4'>
                {0}
                <h3>{1}</h3>
                <p>{2}</p>
                <p>How funny?</p>
                <div data-productid='f{3}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>
                <p>How interesting?</p>
                <div data-productid='i{3}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>
                <div>
                    <button type='button' class='btn btn-default btn-xs'>Cat</button>
                    <button type='button' class='btn btn-default btn-xs'>Dog</button>
                    <button type='button' class='btn btn-default btn-xs'>Bear</button>
                    <button type='button' class='btn btn-default btn-xs'>Feline</button>
                    <button type='button' class='btn btn-default btn-xs'>Rabbit</button>
                    <button type='button' class='btn btn-default btn-xs'>Rodent</button>
                    <button type='button' class='btn btn-default btn-xs'>Bird</button>
                    <button type='button' class='btn btn-default btn-xs'>Other Animal</button>
                    
                </div>
            </div><!-- /.col-lg-4 -->";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            _load();
    }
    private void _load()
    {
//        string _res = "";
//        string baseUrl = Request.Url.Scheme + "://" + Request.Url.Authority +
//    Request.ApplicationPath.TrimEnd('/') + "/";
//        using (var httpClient = new HttpClient())
//            _res = httpClient.GetStringAsync(baseUrl+"/Content/CatMe.ashx?cmd=rank").Result;

        
//        JavaScriptSerializer jsonSerializer = new JavaScriptSerializer();
//        OriginalPostGroup ops = jsonSerializer.Deserialize<OriginalPostGroup>(_res);
//        ltlImages.Text = "<div class='row' id='kit-kats' style='text-align:center;'>";
//        int _count = 1;
//        foreach (OriginalPost op in ops.Posts)
//        {
//            if(_count%6==0)
//                ltlImages.Text+= "</div><div class='row' id='kit-kats' style='text-align:center;'>";
//            if (op.LocalIMGURL!=null)
//            if(op.LocalIMGURL.Contains("re_srcs"))
//            {
//                string[] _parts = op.LocalIMGURL.Split(new string[] { "re_srcs" }, StringSplitOptions.RemoveEmptyEntries);
//                string _localIMG = "";
//                _localIMG="<img class='responsive' src='"+"re_srcs" + _parts[1]+"' alt='Generic placeholder image' width='200' />";
//                if(_localIMG.Contains("gif")){
//                    _localIMG=@"<video width='200' controls>
//  <source src='" + "re_srcs" + _parts[1].Replace("gif", "mp4") +@"' type='video/mp4'>
//  Your browser does not support the video tag.
//</video>";
                   
//                }
//                ltlImages.Text += String.Format(__img, _localIMG, op.Title, op.Description, op.ID);
//            }
//            _count++;
//        }

//        ltlImages.Text += "</div>";
    }
}