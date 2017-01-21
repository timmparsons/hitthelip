$(".alert").delay(200).fadeOut(300);

$(document).on('turbolinks:load', function (){
	$(',rating').raty ( { path: '/assets', scoreName: 'comment[rating]' });
});