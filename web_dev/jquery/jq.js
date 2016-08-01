$(document).ready(function(){

	$(".photo").mouseenter(function(){
		$("img").fadeOut("slow");
	});

	$("#clickhere").click(function(){
		$("img").fadeIn("slow");
	});

});