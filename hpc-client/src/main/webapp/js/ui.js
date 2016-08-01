
$(function() {
	$('.tabs a').click(function() {            
        if( $(this).hasClass("disabled") == false )        
            switch_tabs($(this));
	});
 
    var selpos = $.cookie(ctrl_page_name+'tab-pos');
    if( selpos != null)
        switch_tabs($(".tabs a[selpos='" + selpos + "']"));
    else
        switch_tabs($('.defaulttab'));
});
 
function switch_tabs(obj)
{
    $('.tab-content').hide();
	$('.tabs a').removeClass("selected");
	var id = obj.attr("rel");
 
	$('#'+id).show();
	obj.addClass("selected");
    $.cookie(ctrl_page_name+'tab-pos', obj.attr("selpos"));
}

function reset_tabs()
{
    $.cookie(ctrl_page_name+'tab-pos', null);
}
    
//------------------------------------------------------------	
function openPopup( para_title, para_popup_id, para_width, para_height )
//------------------------------------------------------------	
{
    var w = 640, h = 480;
    
    if( para_width != undefined )
        w = para_width;
        
    if( para_height != undefined )
        h = para_height;              

    $.colorbox({title:para_title, opacity:0.6, maxWidth:800, maxHeight:600, innerWidth:w, innerHeight:h, inline:true, href:para_popup_id});
}

//------------------------------------------------------------	
function closePopup()
//------------------------------------------------------------	
{
    $.colorbox.close();
}

//------------------------------------------------------------  
function initAllDatePickers( para_yearRangeFrom, para_yearRangeTo )
//------------------------------------------------------------  
{    
    initDatePicker( ".datepicker", para_yearRangeFrom, para_yearRangeTo );

    $.datepicker.setDefaults( $.datepicker.regional[ "de" ] );
}

//------------------------------------------------------------  
function initDatePicker( para_sSelector, para_yearRangeFrom, para_yearRangeTo )
//------------------------------------------------------------  
{    
    if( ( para_yearRangeFrom != undefined ) && ( para_yearRangeTo != undefined ) )
    {
        //if( para_yearRangeTo >= 0 )
            //para_yearRangeTo = "+" + para_yearRangeTo;
            
        var fromToString = para_yearRangeFrom + ":" + para_yearRangeTo;

        $(para_sSelector).datepicker({dateFormat:"dd.mm.yy",showOn:"button",buttonImageOnly:true,buttonText:"Datum wählen...",buttonImage:"images/icons/calendar.png",changeYear: true,yearRange:fromToString,showAnim:"slideDown"});        
    }
    else
    {
        $(para_sSelector).datepicker({dateFormat:"dd.mm.yy",showOn:"button",buttonImageOnly:true,buttonText:"Datum wählen...",buttonImage:"images/icons/calendar.png",showAnim:"slideDown"});
    }


}