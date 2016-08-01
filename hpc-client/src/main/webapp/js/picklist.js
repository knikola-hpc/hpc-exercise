//------------------------------------------------------------
function openPicklistEx( para_key, para_query_param, para_width, para_height )
//------------------------------------------------------------	
{
    _openPicklist( para_key, 0, para_query_param, para_width, para_height );
}

//------------------------------------------------------------
function openPicklistMultiEx( para_key, para_query_param, para_width, para_height )
//------------------------------------------------------------
{
    _openPicklist( para_key, 1, para_query_param, para_width, para_height );
}

//------------------------------------------------------------	
function openPicklist( para_key, para_width, para_height )
//------------------------------------------------------------	
{
    _openPicklist( para_key, 0, "", para_width, para_height );
}

//------------------------------------------------------------
function openPicklistMulti( para_key,  para_width, para_height )
//------------------------------------------------------------
{
    _openPicklist( para_key, 1, "", para_width, para_height );
}

//------------------------------------------------------------	
function _openPicklist( para_key, para_is_multi, para_query_param, para_width, para_height )
//------------------------------------------------------------	
{
    var w = 640, h = 480;
    
    if( para_width != undefined )
        w = para_width;
        
    if( para_height != undefined )
        h = para_height;                
    
    var ajaxline = "ajax.php?ajax_action=GET_PICKLIST&key=" + para_key + "&multi=" + para_is_multi;
    
    if( para_query_param != "" )
        ajaxline += "&qp=" + encodeURI(para_query_param);
    
    //alert( ajaxline );

    $.colorbox({title:"", opacity:0.6, maxWidth:800, maxHeight:600, innerWidth:w, innerHeight:h, href:ajaxline,
	onComplete:function()
	{
		var cbContainer = $('div[pkey="' + para_key + '"]');
		var cbTitle = cbContainer.attr("ptitle");		
		$('#cboxTitle').text(cbTitle);
	}
	});
}

//------------------------------------------------------------	
function closePicklist()
//------------------------------------------------------------	
{
    $.colorbox.close();
}

//------------------------------------------------------------	
function choosePicklistItem( para_picklist_key, para_id, para_result_callback, para_query_param )
//------------------------------------------------------------	
{


    $.colorbox.close();

    var query_param = "";
    if( para_query_param != undefined )
        query_param = para_query_param;
    
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "ajax.php",
        data: {ajax_action:"GET_PICKLIST_RESULT",picklist_key:para_picklist_key,data_id:para_id,qp:query_param},        
        success: function(json) {     
        //console.log( json );
           para_result_callback(json);
        },
        error:function(json) {
        alert( json.responseText );
        }
    });
}

