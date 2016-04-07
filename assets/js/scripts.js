$(document).ready(function() {
	$.get('/notes/notes_html', function(res) {
		$('#notes').html(res);
		// console.log("hello")
	});

	$(document).on('change', 'textarea', function() {
		// if ($(this).hasClass('modify')) {

			var id = $(this).attr('id');
			var serialized = $(this).serialize() + '&id=' + id;

			console.log(serialized);
			$.post('/notes/modify', serialized, function(res) {
				$('#notes').html(res);
				console.log('modify');
			});
		// }
	});

	$(document).on('submit', 'form', function() {
		if ($(this).hasClass('add')) {
			$.post('/notes/add', $(this).serialize(), function(res) {
				$('#notes').html(res);
				console.log('addif');
			});
		} if ($(this).hasClass('delete')) {
			$.post('/notes/delete', $(this).serialize(), function(res) {
				$('#notes').html(res);
				console.log('deleteif');
			});
		} 
		console.log('return false');
		return false;
	});
})




// $(document).ready(function(){
// 	$.get('/not/post_html', function(res) {
// 		$('#posts').html(res);
// 	});
// 	$('form').submit(function() {
// 		$.post('/posts/create', $(this).serialize(), function(res) { 
// 			$('#posts').html(res);
// 		});
// 		return false;
// 	});
// });