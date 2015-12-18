<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/styles/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/styles/jcarousel.basic.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/jquery.jcarousel.min.js" type="text/javascript"></script>
    <script src="assets/js/jcarousel.basic.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
            <h1>Basic carousel</h1>

            <p>This example shows how to setup a basic carousel with prev/next controls and pagination.</p>

            <div class="jcarousel-wrapper">
                <div class="jcarousel" data-jcarousel="true">
                    <ul style="left: -2400px; top: 0px;">
                        <li><img src="assets/images/img1.jpg" width="600" height="400" alt=""/></li>
                        <li><img src="assets/images/img2.jpg" width="600" height="400" alt=""/></li>
                        <li><img src="assets/images/img3.jpg" width="600" height="400" alt=""/></li>
                        <li><img src="assets/images/img4.jpg" width="600" height="400" alt=""/></li>
                        <li><img src="assets/images/img5.jpg" width="600" height="400" alt=""/></li>
                        <li><img src="assets/images/img6.jpg" width="600" height="400" alt=""/></li>
                    </ul>
                </div>

                <p class="photo-credits">
                    Photos by <a href="http://www.mw-fotografie.de">Marc Wiegelmann</a>
                </p>

                <a href="#" class="jcarousel-control-prev" data-jcarouselcontrol="true">‹</a>
                <a href="#" class="jcarousel-control-next" data-jcarouselcontrol="true">›</a>
                
                <p class="jcarousel-pagination" data-jcarouselpagination="true"><a href="#1">1</a><a href="#2">2</a><a href="#3">3</a><a href="#4">4</a><a href="#5" class="active">5</a><a href="#6">6</a></p>
            </div>
        </div>
    </form>
</body>
</html>
