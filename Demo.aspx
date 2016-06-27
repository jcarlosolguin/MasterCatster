<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="lib/Commons.js"></script>
    <script src="lib/RndrNgn.js"></script>
    <script type="text/javascript">
        
        var _tmplt = "<div style='' class='col-lg-4 col-md-4 col-sm-6'><h4 style='height:50px;'>{1}</h4><img style='object-fit: cover;height:150px;width:100%;border-top:50px;' src='{3}' /></div>";
        InitRndrNgn(_tmplt,6,"Content/getPost.ashx?cmd=get&n=");
        
    </script>
    <div id="elemnts">

    </div>
</asp:Content>

