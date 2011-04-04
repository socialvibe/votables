counter = function(start) {
  this.count = start;
  this.increment = function() { this.count++; return this.count; }
  this.value = function() { return this.count }
}

// $(document).ready(function () {
// 	$("#user_new").validate({
// 		debug: true,
// 		rules: {
// 			"user[name]": {required: true, minlength: 2},
// 			// "user[password]": {required: true, minlength: 6},
// 			// "user[password_confirmation]": {required: true, equalTo: "#user_password"}
// 		}
// 	});
// });
