<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/styles/slick.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/slick.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#galleryLists .slider-for').slick({
                infinite: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: true,
                fade: false,
                asNavFor: '#galleryLists .slider-nav'
            });
            $('#galleryLists .slider-nav').slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                asNavFor: '#galleryLists .slider-for',
                dots: false,
                focusOnSelect: true
            });
            $('#galleryLists .slider-nav').on('afterChange', function (event, slick, currentSlide, nextSlide) {
                //remove all active class
                $('#galleryLists .slider-nav .slick-slide').removeClass('slick-current');
                //set active class for current slide
                $('#galleryLists .slider-nav .slick-slide:not(.slick-cloned)').eq(currentSlide).addClass('slick-current');
            });
            $('#galleryLists .slider-nav .slick-slide:not(.slick-cloned)').eq(0).addClass('slick-current');
        });
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="galleryLists" class="gallery-slider">
        <div class="slider-for">
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 1</div>
                    </div>
                </div>
            </div>
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 2</div>
                    </div>
                </div>
            </div>
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 3</div>
                    </div>
                </div>
            </div>
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 4</div>
                    </div>
                </div>
            </div>
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 5</div>
                    </div>
                </div>
            </div>
            <div class="slider-big">
                <div class="gallery-group">
                    <div class="gallery-img">
                        <img class="img-responsive" src="assets/images/gallery-big-1.jpg" alt="" /></div>
                    <div class="gallery-text">
                        <div class="text-in">
                            Lorem ipsum dolor sit amet consectetur adipisicing 6</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gallery-smalls">
            <div class="slider-nav">
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="slider-small">
                    <div class="gallery-small">
                        <div class="small-box">
                            <img class="img-responsive" src="assets/images/gallery-smal-1.jpg" alt="" /></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
