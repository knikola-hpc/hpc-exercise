function glob_checkSubmit(htmldocument, fieldlist)
{
	//var inputfields = new Array("firstname","lastname","username","password","country","role","email");
	var emptyFound = false;
	for (i=0; i<=fieldlist.length-1; i++)	
	{
		if ( htmldocument.getElementsByName(fieldlist[i])[0].type == "radio")
		{
			var bla = htmldocument.getElementsByName(fieldlist[i]);
			var mycheck = false;
			
			for(i=0;i<bla.length;i++)
			{		
				if( bla[i].checked == true )
					mycheck = true;
			}
			
			if( mycheck == false )			
			{
				alert("Bitte treffen Sie eine Auswahl!"); 
				return false;
			}			
		}
		else
		{				
			if (htmldocument.getElementsByName(fieldlist[i])[0].value=="")
			{
				htmldocument.getElementsByName(fieldlist[i])[0].style.backgroundColor="#FFDDDD";
				emptyFound = true;
			}
			else
			{
				htmldocument.getElementsByName(fieldlist[i])[0].style.backgroundColor="#FFFFFF";
			}
		}
                
	}             
            
	if (emptyFound)
	{
		alert("Bitte füllen Sie alle rot markierten Felder aus!"); 
		return false;
	}
	else
	{
		return true;
	}
}

function openHelpWindow( para_id )
{
	openWindow( "viewhelp.php?id=" + para_id,"_helpwindow","width=900,height=600,menubar=no,toolbar=no,status=no,resizable=yes,scrollbars=yes");	
}

function openInfoPaneWindow( para_sURL )
{
	openWindow( para_sURL,"_toolwindow","width=800,height=600,menubar=no,toolbar=no,status=no,resizable=yes,scrollbars=yes");
}


function openWindow(url, target, props) {

	helpwin = window.open(url, target, props);
	helpwin.focus();
}

/**
*
*  Base64 encode / decode
*  http://www.webtoolkit.info/
*
**/

var Base64 = {

	// private property
	_keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",

	// public method for encoding
	encode : function (input) {
		var output = "";
		var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
		var i = 0;

		input = Base64._utf8_encode(input);

		while (i < input.length) {

			chr1 = input.charCodeAt(i++);
			chr2 = input.charCodeAt(i++);
			chr3 = input.charCodeAt(i++);

			enc1 = chr1 >> 2;
			enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
			enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
			enc4 = chr3 & 63;

			if (isNaN(chr2)) {
				enc3 = enc4 = 64;
			} else if (isNaN(chr3)) {
				enc4 = 64;
			}

			output = output +
			this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
			this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);

		}

		return output;
	},

	// public method for decoding
	decode : function (input) {
		var output = "";
		var chr1, chr2, chr3;
		var enc1, enc2, enc3, enc4;
		var i = 0;

		input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

		while (i < input.length) {

			enc1 = this._keyStr.indexOf(input.charAt(i++));
			enc2 = this._keyStr.indexOf(input.charAt(i++));
			enc3 = this._keyStr.indexOf(input.charAt(i++));
			enc4 = this._keyStr.indexOf(input.charAt(i++));

			chr1 = (enc1 << 2) | (enc2 >> 4);
			chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
			chr3 = ((enc3 & 3) << 6) | enc4;

			output = output + String.fromCharCode(chr1);

			if (enc3 != 64) {
				output = output + String.fromCharCode(chr2);
			}
			if (enc4 != 64) {
				output = output + String.fromCharCode(chr3);
			}

		}

		output = Base64._utf8_decode(output);

		return output;

	},

	// private method for UTF-8 encoding
	_utf8_encode : function (string) {
		string = string.replace(/\r\n/g,"\n");
		var utftext = "";

		for (var n = 0; n < string.length; n++) {

			var c = string.charCodeAt(n);

			if (c < 128) {
				utftext += String.fromCharCode(c);
			}
			else if((c > 127) && (c < 2048)) {
				utftext += String.fromCharCode((c >> 6) | 192);
				utftext += String.fromCharCode((c & 63) | 128);
			}
			else {
				utftext += String.fromCharCode((c >> 12) | 224);
				utftext += String.fromCharCode(((c >> 6) & 63) | 128);
				utftext += String.fromCharCode((c & 63) | 128);
			}

		}

		return utftext;
	},

	// private method for UTF-8 decoding
	_utf8_decode : function (utftext) {
		var string = "";
		var i = 0;
		var c = c1 = c2 = 0;

		while ( i < utftext.length ) {

			c = utftext.charCodeAt(i);

			if (c < 128) {
				string += String.fromCharCode(c);
				i++;
			}
			else if((c > 191) && (c < 224)) {
				c2 = utftext.charCodeAt(i+1);
				string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
				i += 2;
			}
			else {
				c2 = utftext.charCodeAt(i+1);
				c3 = utftext.charCodeAt(i+2);
				string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
				i += 3;
			}

		}

		return string;
	}

}

function saveSessionCookieData(fieldname, value)
{
	document.cookie = fieldname+'='+value;
}

function deleteCookie( fieldname )
{
	document.cookie = fieldname + "=;expires=Thu, 01-Jan-1970 00:00:01 GMT";
}


function saveCookieData(fieldname,value)
{
 var expdate = new Date(); 
 expdate = new Date(expdate.getTime() + 60*60*24*90);
 document.cookie = fieldname+'='+value+'; expires='+expdate.toGMTString()+';'; 
}

function saveCookieDataBase64(fieldname,value)
{
	var b64value = Base64.encode( value );
	saveCookieData(fieldname,b64value);
}

function switchLanguageTo( para_lang_id )
{
    var st_URL = document.URL;

    if (st_URL.search(/.lang=../) > -1) {
        st_URL = st_URL.replace(/.lang=../g, "");
    }

    if (st_URL.indexOf("?", 0)>-1)
    {
        window.location=st_URL+'&lang='+para_lang_id;
    }
    else
    {
        window.location=st_URL+'?lang='+para_lang_id;
    }

    return false;
}


function switchLanguage()
{
    var st_URL = document.URL;

    if (st_URL.search(/.lang=../) > -1) {
        st_URL = st_URL.replace(/.lang=../g, "");
    }

    if (st_URL.indexOf("?", 0)>-1)
    {
        window.location=st_URL+'&lang='+document.getElementById('selectLang').value;
    }
    else
    {
        window.location=st_URL+'?lang='+document.getElementById('selectLang').value;
    }

    return false;
}

function switchMonth()
{
    var st_URL = document.URL;

    if (st_URL.search(/.month=../) > -1) {
        st_URL = st_URL.replace(/.month=../g, "");
    }

    if (st_URL.indexOf("?", 0)>-1)
    {
        window.location=st_URL+'&month='+document.getElementById('month').value;
    }
    else
    {
        window.location=st_URL+'?month='+document.getElementById('month').value;
    }

    return false;
}

function switchYear()
{
    var st_URL = document.URL;

    if (st_URL.search(/.year=..../) > -1) {
        st_URL = st_URL.replace(/.year=..../g, "");
    }

    if (st_URL.indexOf("?", 0)>-1)
    {
        window.location=st_URL+'&year='+document.getElementById('year').value;
    }
    else
    {
        window.location=st_URL+'?year='+document.getElementById('year').value;
    }

    return false;
}

function check_translation_changed()
{
	var i = 0;
	var runLoop = true;
	var hasChanges = false;

	while (runLoop) {

		var newElem = document.getElementById(i + '_new');
		if (newElem == null)
        {
			runLoop = false;
		}
        else
        {
			var newText = newElem.value;
			var oldText = document.getElementById(i + '_old').value;

			if (newText != oldText) {
				hasChanges = true;
				newElem.style.backgroundColor = '#FFDDDD';
			}
		}
		i++;
	}

	if (hasChanges)
    {
		if (!confirm('Some of your translations have changed (red marked).\n\nIf you do not save it and continue, your changes will be lost.'))
        {
			return false;
		}
	}
	
	return true;
}


function initPopup()
{	

	//select all the a tag with name equal to modal
	$('a[name=modal]').click(function(e) {
		//Cancel the link behavior
		e.preventDefault();
		
		//Get the A tag
		var id = $(this).attr('href');
	
		//Get the screen height and width
		var maskHeight = $(window).height();
		var maskWidth = $(window).width();
	
		//Set heigth and width to mask to fill up the whole screen
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#mask').fadeIn(400);	
		$('#mask').fadeTo("fast",0.2);	
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		$(id).css('top',  (winH/2)-($(id).height()/2));
		$(id).css('left', (winW/2)-($(id).width()/2));
		
		
		
		//transition effect
		$(id).fadeIn(800); 
	
	});
	
	//if close button is clicked
	$('.window #close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});			
	
}

function floatval( para_value )
{
	if( para_value == '' || para_value == undefined )
	{
		return 0.0;
	}

	return para_value * 1.0;
}

function intval( para_value )
{
	return parseInt( floatval( para_value ) );
}

function number_format(number, decimals, dec_point, thousands_sep) 
{
    number = (number + '').replace(/[^0-9+\-Ee.]/g, '');
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function (n, prec) {
            var k = Math.pow(10, prec);
            return '' + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3)
    {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '').length < prec) 
    {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
}

function stringToNumber( para_value )
{
    if( para_value == undefined )
    {
        return para_value;
    }
    
    return para_value.replace(/\./g, '').replace(/,/g, '.') * 1.0;
}

function numberToString( para_value )
{
    if( para_value == undefined )
    {
        return para_value;
    }
    
    return number_format( para_value, 2, ',', '.' );
}

function dprint( para_prefix, para_value )
{
	if( window.console )
	{
		console.log( para_prefix, para_value );
	}
}
