$(document).ready(function () {
	$("#user_new").validate({
		debug: true,
		rules: {
			"user[name]": {required: true, minlength: 2},
			// "user[password]": {required: true, minlength: 6},
			// "user[password_confirmation]": {required: true, equalTo: "#user_password"}
		}
	});
});