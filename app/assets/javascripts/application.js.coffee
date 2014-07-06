//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$ ->

	$(".smoothScroll").on "click", (e) ->
			e.preventDefault()
			target = @hash
			$target = $(target)
			$("html, body").stop().animate
				scrollTop: $target.offset().top - 170
				,1000, "swing"
