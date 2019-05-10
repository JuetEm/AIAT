function testAlert(){
	alert("It's Alert Test?!?!?");
}

function previewIMG(input){
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.onload = function(e){
			$('#imgTag').attr('src',e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}