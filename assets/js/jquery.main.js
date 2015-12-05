(function ($) {
    $(window).load(function () {
        $('#slider').nivoSlider({
            directionNav: false
        });
    });
    $(function () {
           $(".select-b").uniform();
            $(".panel-left").mobilepanel();
            $(".panel-right").mobilepanel({ panelLeft: false });
            $.backstretch("assets/images/main-bg.jpg");
            $("#tabs").tabs();
            $("#tabs .ui-tabs-nav a").click(function () {
                var idtabs = $(this).attr("href");
                $("#tabs .tabs-link a").removeClass("current");
                $("#tabs .tabs-link a[href='" + idtabs + "']").addClass("current");
            });
            $("#tabs .tabs-link:first a").addClass("current");
            $("#tabs .tabs-link a").click(function () {
                var idtabs = $(this).attr("href");
                $("#tabs .ui-tabs-nav a[href='" + idtabs + "']").trigger("click");
                var offset = $(this).parent().offset();
                var topid = offset.top - $(this).parent().height() * 3;
                $("html,body").stop(true, true).animate({ scrollTop: topid }, 500);
                return false;
            });
            mymenudes();
            menusroll();
            mysroll();
            $("#sroltop a").click(function () {
                $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
                return false;
            });
            if ($('#isotopelist').size() == 1) {
                var cleartimeout
                clearTimeout(cleartimeout);
                cleartimeout = setTimeout(function () {
                    var $container = $('#isotopelist').imagesLoaded(function () {
                        $container.isotope({
                            itemSelector: '.element-item',
                            layoutMode: 'fitRows'
                        });
                    });
                }, 300);
            }
            if ($('.isotopelist').size() > 0) {
                var cleartimeout
                clearTimeout(cleartimeout);
                cleartimeout = setTimeout(function () {
                    $('.isotopelist').each(function () {
                        var idiso = "#" + $(this).attr("id");
                        var $container2 = $(idiso).imagesLoaded(function () {
                            $container2.isotope({
                                itemSelector: '.element-item',
                                layoutMode: 'fitRows'
                            });
                        });
                    });
                }, 300);
            }
            if ($("#sliderTabs").size() == 1) {
                $("#sliderTabs .jcarousel-wrapper").jcarousellist({
                    autos: false,
                    pausehover: false,
                    pager: false, //pager num
                    pagergroup: false,
                    timespees: 3000,
                    wrapsroll: true, // list sroll
                    widthcontant: false, // min width contant
                    minwidth: 250, // min width li 286
                    pdbutton: 0 //padding total left + right
                });
//                $("#sliderTabs .jcarousel").jcarouselAutoscroll('stop');
                $("#sliderTabs .jcarousel-wrapper").append('<div class="bg-line"></div>');
                $("#sliderTabs .content-tabs").stop(true, true).animate({ "opacity": 0 }, 0);
                $("#sliderTabs .content-tabs:first").stop(true, true).addClass("tabs-current").animate({ "opacity": 1 }, 0);
//                .find(".jcarousel").jcarouselAutoscroll('start');
                $("#sliderTabs .control-tabs li:first a").addClass('current');
                $("#sliderTabs .tabs-control:first a").addClass('current');
                $("#sliderTabs .control-tabs li a").click(function () {
                    $("#sliderTabs .control-tabs li a").removeClass('current');
                    $("#sliderTabs .tabs-control a").removeClass('current');
//                    $("#sliderTabs .jcarousel").jcarouselAutoscroll('stop');
                    $(this).addClass("current");
                    var tabsid = $(this).attr("href");
                    $("#sliderTabs .tabs-control a[href='" + tabsid + "']").addClass("current");
                    $("#sliderTabs .content-tabs").removeClass("tabs-current").stop(true, true).animate({ "opacity": 0 }, 0);
                    $(tabsid).addClass("tabs-current").stop(true, true).animate({ "opacity": 1 }, 500);
//                    .find(".jcarousel").jcarouselAutoscroll('start');
                    return false;
                });
                $("#sliderTabs .tabs-control a").click(function () {
                    var tabsid = $(this).attr("href");
                    $("#sliderTabs .control-tabs li a[href='" + tabsid + "']").trigger("click");
                    var offset = $(this).parent().offset();
                    var topid = offset.top - $(this).parent().height() * 2;
                    $("html,body").stop(true, true).animate({ scrollTop: topid }, 500);
                    return false;
                });
            }
            if ($("#parners").size() == 1) {
                $("#parners .jcarousel-wrapper").jcarousellist({
                    autos: true,
                    pausehover: true,
                    pager: false, //pager num
                    pagergroup: false,
                    timespees: 3000,
                    wrapsroll: true, // list sroll
                    widthcontant: true, // min width contant
                    minwidth: 180, // min width li 286
                    pdbutton: 0 //padding total left + right
                });
            }
            if ($("#detailImg").size() == 1) {
                $("#detailImg .jcarousel-wrapper").jcarousellist({
                    autos: false,
                    pausehover: true,
                    pager: false, //pager num
                    pagergroup: false,
                    timespees: 3000,
                    wrapsroll: false, // list sroll
                    widthcontant: true, // min width contant
                    minwidth: 70, // min width li 286
                    pdbutton: 0 //padding total left + right
                });
                $("#detailImg .small-img").click(function(){
                    $("#detailImg .small-img").removeClass('current');
                    $(this).addClass('current');
                });
                $("#detailImg li:first .small-img").trigger("click");
                $(window).resize( function(){
                    var cleartime;
                    clearTimeout(cleartime);
                    cleartime = setTimeout( function(){
                        $("#detailImg .img-small .current").trigger("click");
                        var liindex = $("#detailImg .img-small .current").parents("li").index();
                        $('#detailImg .jcarousel').jcarousel('scrollIntoView', liindex);
                    }, 300);
                });
            }
            if ($("#about-video").size() == 1) {
                if($("#about-video").hasClass("video-auto")){
                    var boolv = true;
                }else{
                    var boolv = false;
                }
                $("#about-video .jcarousel-wrapper").jcarouselbox({
                    autos: boolv,
                    pausehover: true,
                    pager: false, //pager num
                    wipont: [{ widthpoint: "768", numcount: "3" }, { widthpoint: "361", numcount: "2"}],
                    timespees: 3000,
                    wrapsroll: true
                });
                var srcvideofirst = $("#about-video .video-box:first").attr("href");
                jwplayer('jwplayer').setup({
                    file: srcvideofirst,
                    flashplayer: "assets/js/jwplayer.flash.swf",
                    width: '100%',
                    aspectratio: '16:9'
                });
                $("#about-video .video-box, .video-name a").click(function () {
                    var srcvideo = $(this).attr("href");
                    jwplayer('jwplayer').load([{
                        file: srcvideo
                    }]);
                    //alert(srcvideo);
                    //jwplayer('jwplayer').setup({
                    //    file: srcvideo,
                    //    flashplayer: "assets/js/jwplayer.flash.swf",
                    //    width: '100%',
                    //    aspectratio: '16:9'
                    //});
                    jwplayer('jwplayer').play();
                    $('#modal').on('hide.bs.modal', function (event) {
                        jwplayer('jwplayer').stop();
                    });
                });
            }
            //
            $(".lits-menu li:has(ul li)").find("a:first").append('<span class="icon"></span>');
            $(".lits-menu > li").mouseenter(function () {
                $(".lits-menu > li").removeClass("active");
                $(this).addClass("active");
                $(".lits-menu > li").each(function () {
                    if ($(this).hasClass("active")) {
                        $(this).find(".menu-sub:first").stop(true, true).slideDown();
                    } else {
                        $(this).find(".menu-sub:first").stop(true, true).slideUp();
                    }
                });
            });
            $(".lits-menu .menu-sub li").hover(function () {
                $(this).find(".menu-level:first").stop(true, true).fadeIn();
            }, function () {
                $(this).find(".menu-level:first").stop(true, true).fadeOut();
            });
            $(".lits-menu > li.active").find(".menu-sub:first").show();
            if($('#proSlider').size() ==1){
                var cleartime;
                var slider = $('#proSlider').bxSlider({
		            auto: true,
		            autoHover: true,
		            pager: false,
                });
                $(".bx-wrapper .bx-controls-direction a").click( function(){
                    clearTimeout(cleartime);
                    cleartime = setTimeout( function(){
                        slider.startAuto();
                    }, 500);
                });
            }
            //
            pagerresize()
    });
    //function===============================================================================================
    //pager mobile
        function pagerresize() {
            pagermobile();
            $(window).resize(function () {
                pagermobile();
            });
        }
        function pagermobile() {
            var myClear;
            if ($(window).width() > 750) {
                $("#pagerp").removeClass("pagersroll pageractive");
            } else {
                $("#pagerp").addClass("pageractive");
                clearTimeout(myClear);
                var mainh = $("#isotopelist");
                var offset = mainh.offset();
                var hheader = offset.top;
                var hfooter = (hheader + mainh.outerHeight()) - $(window).innerHeight();
                var srollmain = $(window).scrollTop();
                //                alert(hheader + " - " + srollmain);
                mycon(srollmain, hheader, hfooter);
                myClear = setTimeout(function () {
                    $(window).scroll(function () {
                        var offsets = mainh.offset();
                        var hheaders = offsets.top;
                        var hfooters = (hheaders + mainh.outerHeight()) - $(window).innerHeight();
                        var srollmains = $(this).scrollTop();
                        mycon(srollmains, hheaders, hfooters);
                    });
                }, 500);
            }
        }
        function mycon(srollmain, hheader, hfooter) {
            if (srollmain > hheader && srollmain < hfooter) {
                if ($("#pagerp.pager").hasClass("pageractive")) {
                    $("#pagerp.pager").addClass("pagersroll");
                }
            } else {
                $("#pagerp.pager").removeClass("pagersroll");
            }
        }
        //sroll buton
        function mysroll() {
            mysrol();
            $(window).scroll(function () {
                var topsroll = $(this).scrollTop();
                mysrolltop(topsroll);
            });
        }
        function mysrol() {
            var topsroll = $(window).scrollTop();
            mysrolltop(topsroll);
        }
        function mysrolltop(topsroll) {
            if (topsroll > 100) {
                $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
            } else {
                $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
            }
        }
        //menu sroll
        function menusroll() {
            var htop = $("#header").height();
            srollmenu(htop);
            $(window).scroll(function () {
                srollmenu(htop);
            });
        }
        function srollmenu(htop) {
            if ($(window).scrollTop() > htop) {
                $("#header").addClass("header-sroll");
            } else {
                $("#header").removeClass("header-sroll");
            }
        }
        //menu
        function mymenudes() {
            mymenusub();
            $(window).resize(function () {
                mymenusubre();
            });
            $("#menu li").hover(function () {
                $(this).find(".menu-sub:first").stop(true, true).slideDown();
            }, function () {
                $(this).find(".menu-sub:first").stop(true, true).slideUp();
            });
        }
        function mymenusub() {
            $("#menu ul li:has(ul li)").find("a:first").append('<span class="icon-right glyphicon glyphicon-arrow-right"></span>');
            $("#menu").addClass("show-menu").find(".menu-sub").show();
            $("#menu li").each(function () {
                var countle1 = $(this).find(".menu-sub:first").size();
                var countle2 = $(this).find("li").find(".menu-sub:first").size();
                if (countle1 > 0) {
                    countle1 = 1;
                }
                if (countle2 > 0) {
                    countle2 = 1;
                }
                var countli = countle1 + countle2;
                var wsub = $(this).find(".menu-sub:first").width();
                var wtotal = countli * wsub;
                $(this).find(".menu-sub:first").width(wsub).attr("data-width", wsub).attr("data-countul", countli);
                var position = $(this).position();
                var leftmenu = position.left;
                var menuw = $("#menu").width() - leftmenu;
                if (menuw < wtotal) {
                    $(this).find(".menu-sub:first").addClass("menu-right");
                } else {
                    $(this).find(".menu-sub:first").removeClass("menu-right");
                }
            });
            $("#menu").removeClass("show-menu").find(".menu-sub").hide();
            //            $("#menu").removeClass("show-menu");
        }
        function mymenusubre() {
            $("#menu li").each(function () {
                var wsub = $(this).find(".menu-sub:first").attr("data-width");
                var countli = $(this).find(".menu-sub:first").attr("data-countul");
                var wtotal = countli * wsub;
                var position = $(this).position();
                var leftmenu = position.left;
                var menuw = $("#menu").width() - leftmenu;
                if (menuw < wtotal) {
                    $(this).find(".menu-sub:first").addClass("menu-right");
                } else {
                    $(this).find(".menu-sub:first").removeClass("menu-right");
                }
            });
        }
})(jQuery);
