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

    <link rel="stylesheet" type="text/css" href="css/hpc.css">
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

</head>
<body>

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
                    <img src="images/file_upload.png"></a>
                </div>
                <div style="position:absolute; height:285px; width:550px; left:405px; top:50px">
                    <div id="teaser_text" style="position:absolute;">

                        <%--Struts form for file upload--%>
                        <html:form action="/uploadSave" method="post" enctype="multipart/form-data" style="border: 1px solid black; padding:5px">

                            <%--Container for keeping server-side messages after performing upload operations--%>
                            <ws:hasMessages>
                                <div id='err' style='display:block'>
                                    <html:errors/>
                                </div>
                            </ws:hasMessages>

                            <table class="fileList">
                                <c:forEach var="ind" begin="0" end="4" step="1">
                                    <tr>
                                        <td>
                                            <p><fmt:message key="document_upload.label.file"/></p>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${ind == 0}">
                                                    <span class='redmark'><fmt:message key="label.required"/></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class='redmark' style="float:left;">&nbsp;
                                                </span></c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <input type="file" id="uploads_${ind}" name="uploads[${ind}]" class="file" >
                                        </td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <input type="submit" id="submit" name="upload" value="Upload" class="button"/>
                                    </td>
                                </tr>
                            </table>

                        </html:form>

                    </div>
                </div>

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


<script>
    // perform client-side file-size validation if supported by the browser
    $('#submit').click(function () {
        //check whether browser fully supports all File API
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            //get the file size from file input field
            for (var idx = 0; idx < 5; idx++) {
                var elem = '#uploads_' + idx;
                if ($(elem)[0].files[0]) {
                    var fileSize = $(elem)[0].files[0].size;

                    // notify if file size more than 1 mb (1048576)
                    if (fileSize > 1048576) {
                        alert('<bean:message key="document_upload.error.file_size_exceed_allowed_max_size" />');
                        return false;
                    }
                }
            }
        }
        return true;
    });
</script>
</body>
</html>