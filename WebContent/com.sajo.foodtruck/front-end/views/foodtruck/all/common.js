$search_open = false;

$(function () {
	$('.search-btn').click(function () {
		if($search_open == false) {
			$('body').addClass('modal-open');
			$('.search-active').show();
			$('.search-active input:text').focus();
		}
	});

	$('.search-active .blind').click(function () {
		$('.search-active').hide();
		$('body').removeClass('modal-open');
	});
});