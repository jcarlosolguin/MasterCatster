
var __templateIMG = "";
var __templateVID = "";
var __nElmntsPerRow = 4;
var __sourceURL = "";
function getKittyViewGroup(jkson)
{
    var obj = jQuery.parseJSON(jkson);
    return obj;
}
function loadViewsOn(divID, count)
{
    
    $.getJSON(__sourceURL + count, function (data) {
       
        _kitties = data.Kitties;
        
        var _render = "<div class='row'>";
        $.each(data.Kitties, function (i, item) {
            //alert(i);
            if (data.Kitties[i].LocalIMGURL.indexOf("mp4") > -1)
                _render += __templateVID.f(data.Kitties[i].ID, data.Kitties[i].Title, data.Kitties[i].Description, data.Kitties[i].LocalIMGURL);
            else
                _render += __templateIMG.f(data.Kitties[i].ID, data.Kitties[i].Title, data.Kitties[i].Description,data.Kitties[i].LocalIMGURL);
        });
        _render += "</div>"
        //alert(_render);
        $("#" + divID).append(_render);
        
    });
}
function InitRndrNgn(templIMG,templVID,nEls, src)
{
    __templateIMG = templIMG;
    __templateVID = templVID;
    __nElmntsPerRow = nEls;
    __sourceURL = src;
   
    $(document).ready(function () {
        loadViewsOn("elemnts", __nElmntsPerRow);
        $('#elemnts').on('click', ".veds", function () {
            var e = this.parentElement.parentElement.getElementsByClassName("play-icon")[0];
            $(e).fadeToggle("slow", "linear");

            this.paused ? this.play() : this.pause();
        });
    });
    $(window).scroll(function () {
        if ($(window).scrollTop() + $(window).height() > $(document).height() - 200) {
            loadViewsOn("elemnts", __nElmntsPerRow);
        }
    });
}
