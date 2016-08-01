<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="bean" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<title>HPC Dual - Nikola Kocic hiring exercise</title>
<head>
    <script src="webjars/jquery/2.1.4/jquery.js"></script>

    <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" type="text/css" href="css/button_002.css">

    <link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/navigation.css">

    <link rel="stylesheet" type="text/css" href="css/groupbox.css">
    <link rel="stylesheet" type="text/css" href="css/listview.css">
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/tabs.css">
    <link rel="stylesheet" type="text/css" href="css/typo.css">
    <link rel="stylesheet" type="text/css" href="css/misc.css">
    <link rel="stylesheet" type="text/css" href="css/feedback.css">
    <link rel="stylesheet" type="text/css" href="css/colorbox.css">

    <script type="text/javascript" src="js/globfunc.js"></script>
    <script type="text/javascript" src="js/jquery-1.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.js"></script>
    <script type="text/javascript" src="js/jquery_003.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery_002.js"></script>
    <script type="text/javascript" src="js/jMenu.js"></script>
    <script type="text/javascript" src="js/picklist.js"></script>
    <script type="text/javascript" src="js/ui.js"></script>

</head>
<body>

<script>
    var ctrl_page_name = "home";
</script>

<div id="public-page-container">
    <div id="public-page">
        <div id="public-topbar">
            <div id="public-header">
                <table style="padding:0;margin:0;width:100%" cellpadding="0" cellspacing="0">
                    <tbody>
                    <tr>
                        <td>
                            <a href="https://www.briefbutler.at/index.php">
                                <img style="margin-top:0px" src="images/bb_header2.png"> </a></td>
                        <td style="text-align:right;vertical-align:top;font-weight:bold;padding-top:10px;">Mit
                            SendStation® Technologie
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div id="public-navbar">
        </div>

        <div id="public-content-page">

            <style>
                #public-footer {
                    width: 878px;
                    border: 0;
                }
            </style>
            <div style="position:absolute; top:0px; z-index: 1005;">
                <div style="position:absolute; left:940px; top:400px; z-index: 1002; width:1px; height:1px;"><a
                        href="https://www.briefbutler.at/index.php?page=app_public_ctrl&amp;action=view&amp;id=1"><img
                        src="images/BB_Signieren.png"></a></div>
                <div style="position:absolute; left:940px; top:120px; z-index: 1002; width:1px; height:1px;"><a
                        href="https://www.digitales.oesterreich.gv.at/-/wahlkartenbestellung-fur-die-bundesprasidentenwahl-mit-handy-signatur-oder-e-card-mit-burgerkartenfunktion"><img
                        src="images/wahl_2016_c.png"></a></div>
                <div style="position:absolute; left:940px; top:130px; z-index: 1002; width:1px; height:1px;"><a
                        href="http://app.briefbutler.at/"><img
                        src="images/app_stoerer_fl.png"></a></div>
            </div>

            <div style="position:absolute; top:101px; z-index: 50; margin-left:-18px; width:1024px; height:368px; overflow:hidden;">
                <div id="teaser_image" style="position:absolute; top:0px; left:0px">&nbsp;

                </div>
                <div style="position:absolute; height:285px; width:550px; left:405px; top:50px">
                    <div id="teaser_text" style="position:absolute;">&nbsp;

                    </div>
                </div>
                <div id="teaser_selectors" style="position:absolute; height:15px; width:300px; right:10px; bottom:100px; text-align:right"></div>
            </div>
            <div style="position:absolute; top:385px; left:50%; margin:0; padding:0; z-index:100;  margin-left: -439px;">
                <div style="position:relative; width:850px; height:182px; background:#ccc; margin:0; padding:14px;"
                     id="app_block">
                    <div style="position:absolute; background:#fff; width:198px; height:182px; left:14px" app_id="24"
                         position="1">
                        <div style="width:174px; margin:12px;">
                            <div style="width:174px; height:64px; margin:0px; font-size:15px; font-weight:bold">
                                <img src="images/wien_77.png" style="margin:-12px; float:left">

                                <h1>Ihre Post der Stadt Wien</h1>
                            </div>
                            <p>... einfempfangen</p>
                            <span style="position:absolute; right:5px; bottom:0px"><a class="public_button"
                                                                                      href="https://www.briefbutler.at/index.php?page=app_public_ctrl&amp;action=view&amp;id=24"><span><div
                                    style="margin-left:-12px; margin-right:0px">Registrieren
                            </div></span></a></span>
                        </div>
                    </div>
                    <div style="position:absolute; background:#fff; width:198px; height:182px; left:231px" app_id="18"
                         position="2">
                        <div style="width:174px; margin:12px;">
                            <div style="width:174px; height:64px; margin:0px; font-size:15px; font-weight:bold">
                                <img src="images/oesterr77.png"
                                     style="margin:-12px; float:left">

                                <h1>Post Ihrer Gemeinde</h1>
                            </div>
                            <p>... einfach und bequem elektronisch empfangen</p>
                            <span style="position:absolute; right:5px; bottom:0px"><a class="public_button"
                                                                                      href="https://www.briefbutler.at/index.php?page=app_public_ctrl&amp;action=view&amp;id=18"><span><div
                                    style="margin-left:-12px; margin-right:0px">Registrieren
                            </div></span></a></span>
                        </div>
                    </div>
                    <div style="position:absolute; background:#fff; width:198px; height:182px; left:448px" app_id="2"
                         position="3">
                        <div style="width:174px; margin:12px;">
                            <div style="width:174px; height:64px; margin:0px; font-size:15px; font-weight:bold">
                                <img src="images/icon_verleg.png"
                                     style="margin:-12px; float:left">

                                <h1>Ihre Post versenden</h1>
                            </div>
                            <p>... einfach sicher elektronisch eingeschrieben.</p>
                            <span style="position:absolute; right:5px; bottom:0px"><a class="public_button"
                                                                                      href="https://www.briefbutler.at/index.php?page=app_public_ctrl&amp;action=view&amp;id=2"><span><div
                                    style="margin-left:-12px; margin-right:0px">Versenden
                            </div></span></a></span>
                        </div>
                    </div>
                    <div style="position:absolute; background:#fff; width:198px; height:182px; left:665px" app_id="3"
                         position="4">
                        <div style="width:174px; margin:12px;">
                            <div style="width:174px; height:64px; margin:0px; font-size:15px; font-weight:bold">
                                <img src="images/Handy_icon_akt.png"
                                     style="margin:-12px; float:left">

                                <h1>Handy-Signatur</h1>
                            </div>
                            <p>... bequem von zu Hause online aktivieren.</p>
                            <span style="position:absolute; right:5px; bottom:0px"><a class="public_button"
                                                                                      href="https://www.briefbutler.at/index.php?page=app_public_ctrl&amp;action=view&amp;id=3"><span><div
                                    style="margin-left:-12px; margin-right:0px">Aktivieren
                            </div></span></a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div style="height:430px">&nbsp;</div>
            <script>
                var animation_time_sec = 1.0;
                var update_loop_time_sec = 0.1;

                var active_index = 0;

                var arr_teaser = [
                    {
                        "0": "File Upload",
                        "title": "File Upload",
                        "1": "<a href='<c:url value="/upload.do" />'>Goto file upload<\/a>",
                        "text": "<p><a href='<c:url value="/upload.do" />'>Goto file upload<\/a>\r\n<\/p><li>Hiring exercise for HPC Dual (file upload)<\/li>\r\n<li>Using Struts<\/li>\r\n<li>Spring<\/li>\r\n<li>Apache CXF<\/li>\r\n",
                        "2": "file_upload.png",
                        "image_name": "file_upload.png",
                        "3": "12",
                        "duration_sec": "30",
                        "4": "https:\/\/www.youtube.com\/watch?v=_LBKLEjKx6c",
                        "image_link": "https:\/\/www.youtube.com\/watch?v=_LBKLEjKx6c"
                    }, {
                        "0": "Ihr elektronisches Postamt",
                        "title": "Ihr elektronisches Postamt",
                        "1": "<p><strong>Elektronisch empfangen und versenden mit Ihrem BriefButler!<\/strong><\/p>\r\n<ul>\r\n<li>Einfach<\/li>\r\n<li>Sicher<\/li>\r\n<li>&Uuml;berall<\/li>\r\n<\/ul>\r\n<p>&nbsp;<\/p>",
                        "text": "<p><strong>Elektronisch empfangen und versenden mit Ihrem BriefButler!<\/strong><\/p>\r\n<ul>\r\n<li>Einfach<\/li>\r\n<li>Sicher<\/li>\r\n<li>&Uuml;berall<\/li>\r\n<\/ul>\r\n<p>&nbsp;<\/p>",
                        "2": "IMG_1628.jpg",
                        "image_name": "IMG_1628.jpg",
                        "3": "12",
                        "duration_sec": "12",
                        "4": "https:\/\/www.youtube.com\/watch?v=_LBKLEjKx6c",
                        "image_link": "https:\/\/www.youtube.com\/watch?v=_LBKLEjKx6c"
                    }, {
                        "0": "Meine Post",
                        "title": "Meine Post",
                        "1": "<p style=\"text-align: justify;\"><strong>Elektronische Postzustellung rund um die Uhr, unabh&auml;ngig von Zeit und Ort!<\/strong><\/p>\r\n<p style=\"text-align: justify;\">Der BriefButler sendet Ihnen Ihre Post - egal ob beh&ouml;rdlich, privat oder gesch&auml;ftlich<\/p>\r\n<p style=\"text-align: justify;\">rasch und unkompliziert zu und pr&uuml;ft gleichzeitig die Identit&auml;t der Absender.<\/p>\r\n<p style=\"text-align: justify;\">So erhalten Sie ausschlie&szlig;lich Post von vertrauensw&uuml;rdigen Versendern und niemals Spam-Nachrichten.<\/p>",
                        "text": "<p style=\"text-align: justify;\"><strong>Elektronische Postzustellung rund um die Uhr, unabh&auml;ngig von Zeit und Ort!<\/strong><\/p>\r\n<p style=\"text-align: justify;\">Der BriefButler sendet Ihnen Ihre Post - egal ob beh&ouml;rdlich, privat oder gesch&auml;ftlich<\/p>\r\n<p style=\"text-align: justify;\">rasch und unkompliziert zu und pr&uuml;ft gleichzeitig die Identit&auml;t der Absender.<\/p>\r\n<p style=\"text-align: justify;\">So erhalten Sie ausschlie&szlig;lich Post von vertrauensw&uuml;rdigen Versendern und niemals Spam-Nachrichten.<\/p>",
                        "2": "home_big_empfangen.png",
                        "image_name": "home_big_empfangen.png",
                        "3": "12",
                        "duration_sec": "12",
                        "4": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=24",
                        "image_link": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=24"
                    }, {
                        "0": "Einfach sicher senden.",
                        "title": "Einfach sicher senden.",
                        "1": "<p><strong>Elektronisch versenden spart Kosten &amp; M&uuml;hen.<\/strong><\/p>\r\n<p>Versenden Sie Ihre Briefe einfach eingeschrieben elektronisch und<\/p>\r\n<p>sparen Sie sich damit Kosten f&uuml;r Kuvert, Druck sowie Porto und<\/p>\r\n<p>-nat&uuml;rlich auch den Weg zum n&auml;chsten Postamt.<strong><br \/><\/strong><\/p>",
                        "text": "<p><strong>Elektronisch versenden spart Kosten &amp; M&uuml;hen.<\/strong><\/p>\r\n<p>Versenden Sie Ihre Briefe einfach eingeschrieben elektronisch und<\/p>\r\n<p>sparen Sie sich damit Kosten f&uuml;r Kuvert, Druck sowie Porto und<\/p>\r\n<p>-nat&uuml;rlich auch den Weg zum n&auml;chsten Postamt.<strong><br \/><\/strong><\/p>",
                        "2": "home_big_versenden.png",
                        "image_name": "home_big_versenden.png",
                        "3": "12",
                        "duration_sec": "12",
                        "4": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=2",
                        "image_link": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=2"
                    }, {
                        "0": "Die Handy-Signatur - mehr als nur eine Unterschrift",
                        "title": "Die Handy-Signatur - mehr als nur eine Unterschrift",
                        "1": "<p><strong>Klar gibt es im Internet Bereiche wo jeder lieber anonym sein m&ouml;chte.<\/strong><\/p>\r\n<p>Um aber rechtsg&uuml;ltige Gesch&auml;fte online abwickeln zu k&ouml;nnen, muss jeder wissen mit wem er es tats&auml;chlich zu tun hat.<\/p>\r\n<p>Die Handy-Signatur ist nicht nur Ihr \"elektronischer Ausweis\" im Internet, sondern erf&uuml;llt auch das rechtliche Erfordernis einer eigenh&auml;ndigen Unterschrift.<\/p>\r\n<p>Aktivieren Sie gleich jetzt Ihre Handy-Signatur, bequem von zu Hause.<\/p>",
                        "text": "<p><strong>Klar gibt es im Internet Bereiche wo jeder lieber anonym sein m&ouml;chte.<\/strong><\/p>\r\n<p>Um aber rechtsg&uuml;ltige Gesch&auml;fte online abwickeln zu k&ouml;nnen, muss jeder wissen mit wem er es tats&auml;chlich zu tun hat.<\/p>\r\n<p>Die Handy-Signatur ist nicht nur Ihr \"elektronischer Ausweis\" im Internet, sondern erf&uuml;llt auch das rechtliche Erfordernis einer eigenh&auml;ndigen Unterschrift.<\/p>\r\n<p>Aktivieren Sie gleich jetzt Ihre Handy-Signatur, bequem von zu Hause.<\/p>",
                        "2": "home_big_handysig.png",
                        "image_name": "home_big_handysig.png",
                        "3": "12",
                        "duration_sec": "12",
                        "4": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=3",
                        "image_link": "https:\/\/www.briefbutler.at\/index.php?page=app_public_ctrl&action=view&id=3"
                    }];
                var num_teaser = arr_teaser.length;

                for (var i in arr_teaser) {
                    i *= 1;

                    var teaser_entry = arr_teaser[i];
                    var display = '';


                    if (teaser_entry['image_link'] != null) {
                        img_html = '<a href="' + teaser_entry['image_link'] + '"><img src="res/teaser_images/' + teaser_entry['image_name'] + '" height="368"/></a>';
                    }
                    else {
                        img_html = '<img src="res/teaser_images/' + teaser_entry['image_name'] + '" height="368"/>';
                    }

                    $('div#teaser_image').append('<div style="position:absolute; top:' + ( ( i == 0 ) ? 0 : 368 ) + 'px;" id="teaser_image' + i + '">' + img_html + '</div>');
                    $('div#teaser_text').append('<div style="position:absolute; top:0px; left:' + ( ( i == 0 ) ? 0 : 600 ) + 'px; width:550px;" id="teaser_text' + i + '"><h1 style="font-size:18px">' + teaser_entry['title'] + '</h1><div>' + teaser_entry['text'] + '</div></div>');

                    $('div#teaser_selectors').append('<div class="teaser_selector teaser_selector_' + ( ( i == (num_teaser - 1) ) ? '' : 'in' ) + 'active" name="' + ( num_teaser - ( i + 1 ) ) + '" onclick="teaserSelect( this );">&nbsp;</div>');

                    if (i > 0) {
                        var div_image = $('#teaser_image' + i);
                        var div_text = $('#teaser_text' + i);

                        div_image.css({'opacity': 0});
                        div_text.css({'opacity': 0});
                    }
                }

                active_show_time_sec = parseInt(arr_teaser[active_index]['duration_sec']);
                active_remaining_show_time_sec = active_show_time_sec;

                //------------------------------------------------------------
                function update()
                //------------------------------------------------------------
                {
                    if (active_remaining_show_time_sec > -1.0 && active_remaining_show_time_sec >= 0.0) {
                        active_remaining_show_time_sec -= update_loop_time_sec;

                        if (active_remaining_show_time_sec > -1.0 && active_remaining_show_time_sec < 0.0) {
                            animateToNextIndex();
                        }
                    }
                }

                //------------------------------------------------------------
                function animateToIndex(para_index)
                //------------------------------------------------------------
                {
                    if (para_index == active_index) return;

                    for (var i = 0; i < num_teaser; i++) {
                        var index_value = ( i - para_index );

                        var div_image = $('#teaser_image' + i);
                        var div_text = $('#teaser_text' + i);

                        div_image.animate({
                                    opacity: ( para_index == i ) ? 1.0 : 0.0,
                                    top: ( para_index == i ) ? 0 : 368
                                },
                                animation_time_sec * 1000,
                                function () {
                                    // do nothing
                                });

                        div_text.animate({
                                    opacity: ( para_index == i ) ? 1.0 : 0.0,
                                    left: ( para_index == i ) ? 0 : 600
                                },
                                animation_time_sec * 1000,
                                function () {
                                    active_index = para_index;
                                    active_show_time_sec = parseInt(arr_teaser[active_index]['duration_sec']);
                                    active_remaining_show_time_sec = active_show_time_sec;
                                });
                    }

                    var teaser_selectors = $('div#teaser_selectors');

                    $('.teaser_selector_active', teaser_selectors)
                            .removeClass('teaser_selector_active')
                            .addClass('teaser_selector_inactive');

                    $('.teaser_selector[name="' + para_index + '"]', teaser_selectors)
                            .removeClass('teaser_selector_inactive')
                            .addClass('teaser_selector_active');
                }

                //------------------------------------------------------------
                function animateToNextIndex()
                //------------------------------------------------------------
                {
                    animateToIndex(( active_index + 1 ) % num_teaser);
                }

                //------------------------------------------------------------
                function teaserSelect(para_this)
                //------------------------------------------------------------
                {
                    var self = $(para_this);

                    active_remaining_show_time_sec = -1.0;
                    animateToIndex(self.attr('name') * 1);
                }

                $(function () {

                    window.setInterval("update();", update_loop_time_sec * 1000);

                });

                //------------------------------------------------------------
                function openYouTube(para_youtubelink)
                //------------------------------------------------------------
                {
                    $.colorbox({
                        iframe: true,
                        width: 853,
                        height: 480,
                        maxWidth: 800,
                        maxHeight: 600,
                        href: para_youtubelink
                    });
                }
            </script>
        </div>

        <div id="public-footer" style="clear:both">
            <div style="float:left;padding-top:10px;">
                <div style="float:left;"><a href="http://www.hpcdual.at/" style="text-decoration: none; color:#727272;"
                                            target="_BLANK">Powered by hpc DUAL</a></div>
                <div style="margin-left:10px;float:left;">
                    <a href="https://twitter.com/briefbutler" target="_BLANK"><img alt="Twitter"
                                                                                   src="images/twitter.png"
                                                                                   style="margin-right:6px;"></a>
                    <a href="https://www.facebook.com/sendstationpro" target="_BLANK"><img alt="Facebook"
                                                                                           src="images/facebook.png"
                                                                                           style="margin-right:6px;"></a>
                    <a href="https://www.xing.com/profile/Brief_Butler" target="_BLANK"><img alt="Xing"
                                                                                             src="images/xing.png"
                                                                                             style="margin-right:6px;"></a>
                </div>
            </div>
            <div style="padding-top:2px;">
                <ul id="pMenu" class="footer">
                    <li class="footer"><a class="jmenu_root footer"
                                          href="https://www.briefbutler.at/index.php?page=view&amp;id=faq" title="FAQ">FAQ</a>
                    </li>
                    <li class="footer"><a class="jmenu_root footer"
                                          href="https://www.briefbutler.at/index.php?page=view&amp;id=kontakt"
                                          title="Kontakt">Kontakt</a></li>
                    <li class="footer"><a class="jmenu_root footer"
                                          href="https://www.briefbutler.at/index.php?page=view&amp;id=impressum"
                                          title="Impressum">Impressum</a></li>
                    <li class="footer"><a class="jmenu_root footer"
                                          href="https://www.briefbutler.at/index.php?page=view&amp;id=agb" title="AGB">AGB</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="loadAnimation"
             style="z-index:999;display:none;background-color:transparent;border:3px solid #86A7CB; position:absolute;top:160px;right:100px;width:auto;height:auto;">
            <img src="images/loading_89.html">
        </div>

    </div>

    <script>
        var mainForm = null;
        //------------------------------------------------------------
        $(function ()
            //------------------------------------------------------------
        {
            /// menue init
            $("#jMenu").jMenu(
                    {
                        ulWidth: 'auto',
                        effects: {
                            effectSpeedOpen: 100,
                            effectSpeedClose: 500,
                            effectTypeOpen: 'show',
                            effectTypeClose: 'hide',
                            TimeBeforeOpening: 0
                        },
                        animatedText: false
                    });

            mainForm = $("form[name='frm_" + ctrl_page_name + "']");
        });
    </script>

</div>
<div style="display: none;" id="cboxOverlay"></div>
<div style="display: none;" class="" id="colorbox">
    <div id="cboxWrapper">
        <div>
            <div style="float: left;" id="cboxTopLeft"></div>
            <div style="float: left;" id="cboxTopCenter"></div>
            <div style="float: left;" id="cboxTopRight"></div>
        </div>
        <div style="clear: left;">
            <div style="float: left;" id="cboxMiddleLeft"></div>
            <div style="float: left;" id="cboxContent">
                <div style="width: 0px; height: 0px; overflow: hidden; float: left;" id="cboxLoadedContent"></div>
                <div style="float: left;" id="cboxTitle"></div>
                <div style="float: left;" id="cboxCurrent"></div>
                <div style="float: left;" id="cboxNext"></div>
                <div style="float: left;" id="cboxPrevious"></div>
                <div style="float: left;" id="cboxSlideshow"></div>
                <div style="float: left;" id="cboxClose"></div>
            </div>
            <div style="float: left;" id="cboxMiddleRight"></div>
        </div>
        <div style="clear: left;">
            <div style="float: left;" id="cboxBottomLeft"></div>
            <div style="float: left;" id="cboxBottomCenter"></div>
            <div style="float: left;" id="cboxBottomRight"></div>
        </div>
    </div>
    <div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
</div>

</body>
</html>