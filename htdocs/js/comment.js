
$(document).ready(function(){



	var url = window.location.href;
	console.log(url);
	var queryReg = /postid=\d/;
	var qstring = queryReg.exec(url);
	var dreg = /\d/;
	var qdstring = dreg.exec(qstring);

$("#newComment").click(function(){
	
	let post = $("#mainPost");
let cForm = ("<div class=\"w3-card-4 w3-margin w3-white\">  <div class=\"w3-container comment\"> <form id=\"usercomment\" method=\"get\" action=\"blogpost.php\"> <h6> <span><input type=\"hidden\" id =\"hid\" name=\"postid\" value=\"" + qdstring[0]  + "\"><label for=\"username\">Username:     <\/label><input type=\"text\" id=\"username\" name=\"username\" class=\"cHEader\" required> <\/input><\/span> <br> <span> <label for=\"name\">Your Name:     <\/label><input name=\"name\" id=\"name\ type=\"text\" class=\"cHEader\" required> <\/input> <\/span> <br> <span> <label for=\"email\">Email Address: <\/label><input name=\"email\" type=\"email\" id=\"email\" required> <\/input> <\/span> <\/h6> <hr> <label for=\"content\">Your Comment:     <\/label><br><Textarea name=\"content\" id=\"content\" class=\"carea\"> <\/Textarea><br><input type=\"submit\" name=\"Submit\" value=\"Submit Comment\"> <\/form>  <p><\/p>   <\/div>   <\/div>");
	post.after(cForm);	
	
let form = document.querySelector("#usercomment");
form.addEventListener("submit", validateForm);

function validateForm(x) {
	creg = /\w+/;
    if (creg.test($("#content").val())) {
      x.preventDefault();
	  alert("add your comment");
   }
}
});
});
