// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//




// Loads all Semantic javascripts

$(document).ready(function(){
	$("#search_sites").keyup(function(){
	  $.ajax({
	    method: "POST",
	    url: "/sites/search/",
	    data: {key: $(this).val()}
	  }).done(function(data) {
	    $("#site_results").innerHTML = data['results'].name;
	    console.log(data['results'].name);
	  });
	});


	$("#schedule_site_id").change(function(){
	  $.ajax({
	    method: "POST",
	    url: "/program_leaders/search/",
	    data: {site_id: $("#schedule_site_id").val()}
	  }).done(function(data) {
	  	console.log(data);
	  	$("#schedule_user_id").empty();
	  	for(i=0; i < data["data"].length; i++){
	  		console.log(data["data"][i]);
	        $("#schedule_user_id").append('<option value="'+data["data"][i][0]+'">'+data["data"][i][1]+'</option>');;
	    }
	    
	  });
	});
});

