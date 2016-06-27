<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kittycat.aspx.cs" Inherits="kittycat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitty - Cat </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Content/cover.css" />
</head>
<body style="height:100%;">
    <form id="form1" runat="server" style="height:100%;">
    <div class="site-wrapper" style="height:100%;">

      <div class="site-wrapper-inner" style="height:100%;">

        <div class="cover-container" >

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">digitalxsNET mstrctstr.Proj</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="http://www.digitalxs.net">Motherboard</a></li>
                </ul>
              </nav>
            </div>
          </div>

          <div class="inner2" style="height:100%; ">
            
            <div class="form-group" style="padding:15px;">
                <label for="inputEmail3" class="col-sm-2 control-label">User</label>
                <div class="col-sm-9">
                    
                    <asp:TextBox runat="server" ID="txtUser" class="form-control" placeholder="user"></asp:TextBox>
                </div>
            </div>
            <div class="form-group" style="padding:15px;">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-9">
                    <asp:TextBox  runat="server" ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            
            <div class="form-group " style="padding:15px;">
            <div class="col-sm-offset-2 col-sm-9" style="text-align:right;">
                <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-default" Text="Login" OnClick="btnLogin_Click" />
            </div>
            </div>
           <div class="separator" style="clear: both; text-align: left;width:515px;height:76;">
<span style=" font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;">_━━___━__*___━_*___┓━╭¬¬¬¬¬━━╮</span><wbr style=" font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"><span class="word_break" style=" display: inline-block; font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"></span><span style=" font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;">_━━___━━*____━━___┗┓|:¬¬¬¬¬¬::</span><wbr style=" font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"><span class="word_break" style="display: inline-block; font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"></span><span style="font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;">::|:^--------^ ━*━___━━____━━*___━┗|:¬¬¬¬¬¬::</span><wbr style="font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"><span class="word_break" style="display: inline-block; font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"></span><span style="font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;">::||｡◕‿‿◕｡| ━_*___━━___*━━___*━━╰O━━━━O╯╰-</span><wbr style="font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"><span class="word_break" style="display: inline-block; font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;"></span><span style=" font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; font-size: 13px; line-height: 18px;">-O-O--╯</span></div>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p><strong>CanTalk</strong> Canada</p>
            </div>
          </div>

        </div>

      </div>

    </div>
    </form>
</body>
</html>
