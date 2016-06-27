
var _tmpltIMG = "<div style='' class='col-lg-4 col-md-4 col-sm-6'><h4 style='height:50px;'>" +
"{1}</h4><img style='object-fit: cover;height:150px;width:100%;border-top:50px;' src='{3}' /></div>";

_tmpltIMG = "<div class='col-lg-3  col-md-3 col-sm-4 rankpic_col'>" +
"<h4 class='rankpic_title'>" +
"{1}</h4><img style='object-fit: cover;height:150px;width:100%;border-top:50px;' src='{3}' />" +

"<p>Desc{2}</p>" +
"<p>How funny?</p>" +
"<div data-productid='f{0}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>" +
"<p>How interesting?</p>" +
"<div data-productid='i{0}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>" +
"<div>" +
    "<button type='button' class='btn btn-default btn-xs'>Cat</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Dog</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Bear</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Feline</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Rabbit</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Rodent</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Bird</button>" +
    "<button type='button' class='btn btn-default btn-xs'>Other Animal</button>" +
"</div>" +
"</div><!-- /.col-lg-4 -->";
var _tmpltVID = "<div style='' class=' col-lg-4 col-md-4 col-sm-6'><h4 style='height:50px;'>" +
"{1}</h4><span class='play-icon'  id='icon{0}'></span><div class='videow'><video loop class='veds object-fit' height='150px' width='100%'   src='{3}'  >Fuckyou1</video></div></div>";
_tmpltVID = "<div class='col-lg-3 col-md-3 col-sm-4 rankpic_col'>" +
"<h4 class='rankpic_title'>" +
"{1}</h4><span class='play-icon'  id='icon{0}'></span><div class='videow'><video loop class='veds object-fit' height='150px' width='100%'   src='{3}'  >Fuckyou1</video></div>" +
"<p>Desc{2}</p>" +
"<p>How funny?</p>" +
"<div data-productid='f{0}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>" +
"<p>How interesting?</p>" +
"whyyy<div data-productid='312' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>" +
"<div data-productid='i{0}' data-rateit-step='1' class='rateit bigstars' data-rateit-starwidth='32' data-rateit-starheight='32'></div>" +
"<div>" +
    "<button type='button' onclick='setContent({0},'Cat');' class='btn btn-default btn-xs'>Cat</button>" +
    "<button type='button' onclick='setContent({0},'Dog');' class='btn btn-default btn-xs'>Dog</button>" +
    "<button type='button' onclick='setContent({0},'Bear');' class='btn btn-default btn-xs'>Bear</button>" +
    "<button type='button' onclick='setContent({0},'Feline');' class='btn btn-default btn-xs'>Feline</button>" +
    "<button type='button' onclick='setContent({0},'Rabbit');' class='btn btn-default btn-xs'>Rabbit</button>" +
    "<button type='button' onclick='setContent({0},'Rodent');' class='btn btn-default btn-xs'>Rodent</button>" +
    "<button type='button' onclick='setContent({0},'Bird');' class='btn btn-default btn-xs'>Bird</button>" +
    "<button type='button' onclick='setContent({0},'Raccon');' class='btn btn-default btn-xs'>Raccon</button>" +
    "<button type='button' onclick='setContent({0},'Other');' class='btn btn-default btn-xs'>Other Animal</button>" +
"</div>" +
"</div><!-- /.col-lg-4 -->";
InitRndrNgn(_tmpltIMG, _tmpltVID, 8, "Content/CatMe.ashx?cmd=rank&n=");