$(document).ready(function(){
	$('#form').submit(function(){
		var texto = $('#texto').val();
		$('#texto').val('');

		 $.ajax({
	     	type: 'post',
	    	url: 'index',
	    	dataType: 'html',
	    	data: {texto: texto},
	    	success: function(data){
	      		$('.resultado').html(data);
	      	}
   		});

		return false;
	});
});
