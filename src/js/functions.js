
/*-------------------------------------------
	Browser Detection
-------------------------------------------*/

// For when you get desparate.

// http://rog.ie/post/9089341529/html5boilerplatejs

var b = document.documentElement;
b.setAttribute('data-useragent',  navigator.userAgent);
b.setAttribute('data-platform', navigator.platform);

// sample CSS: html[data-useragent*='Chrome/13.0'] { ... }


/*-------------------------------------------
	General Functions
-------------------------------------------*/


(function($){


	/* On Page Ready */

	$(document).ready(function (){


		/*-------------------------------------------
			Title
		-------------------------------------------*/

		// Notes...


		/*-------------------------------------------
			Nav Toggle
		-------------------------------------------*/

		// Notes...


		$('#nav').find('.toggle').click(function() {

			$('#login, #search .form').slideUp('fast');

			$('#nav #nav-sub').slideToggle('fast');

		});


		/*-------------------------------------------
			Nav Submenu Toggle
		-------------------------------------------*/

		// Notes...


		$('#nav').find('.has-children').prepend('<div class="submenu-toggle"><span>Submenu</span></div>');

		$('#nav').find('.submenu-toggle').click(function() {

			$(this).parent().siblings().children('ul').slideUp('fast');

			$(this).siblings('ul').slideToggle('fast');

		});


		/*-------------------------------------------
			Login Toggle
		-------------------------------------------*/

		// Notes...


		$('#header').find('.login-toggle').click(function() {

			$('#nav #nav-sub, #search .form').slideUp('fast');

			$('#login').slideToggle('fast');

		});


		$('#login').find('.close').click(function() {

			$('#nav #nav-sub, #search .form').slideUp('fast');

			$('#login').slideToggle('fast');

		});


		/*-------------------------------------------
			Search Toggle
		-------------------------------------------*/

		// Notes...


		$('#search').find('.toggle').click(function() {

			$('#nav #nav-sub, #login').slideUp('fast');

			$('#search').find('.form').slideToggle('fast');

		});


		/*-------------------------------------------
			Tab Toggle
		-------------------------------------------*/

		// Notes...


		$('.tabs ul').find('li').click(function() {

			$(this).addClass('active');

			$(this).siblings().removeClass('active');

			$('.panels').find('.panel').toggleClass('active');

		});


		/*-------------------------------------------
			Accordion Toggle
		-------------------------------------------*/

		// Notes...


		$('.accordion').find('li').click(function() {

			$(this).siblings().removeClass('open');

			$(this).toggleClass('open');

		});


		/*-------------------------------------------
			Select
		-------------------------------------------*/

		// Notes...


		/* Forms */

		$('.form select').selectBoxIt({

			// Options...

			showFirstOption: false

		});

		/* Support Center */

		$('.support-center-search .support-type-select').selectBoxIt({

			// Options...

			// showFirstOption: false

		});


		/*-------------------------------------------
			Support Type Search
		-------------------------------------------*/

		// Notes...


		$('.support-type-select').change(function() {

			var type = $(this).val();

			// Individual Type

			if ( $(this).val() === type ) {

				$('.support-type-multiselect')
					.children('option[value=' + this.value + ']')
					.attr('selected', true)
					.siblings().removeAttr('selected');

			}

			// All Types

			if ( $(this).val() == 'All') {

				$('.support-type-multiselect option').attr('selected', true);

				$('.support-type-multiselect option:lt(1)').removeAttr('selected');

			}

		});

		// If All Types is 'selected'... add 'selected' to all options within multiselect.

		// If FAQs is 'selected'... remove 'selected' from siblings and add 'selected' to this.

		// If Videos is 'selected'... remove 'selected' from siblings and add 'selected' to this.

		// If Forms & Resources is 'selected'... remove 'selected' from siblings and add 'selected' to this.

		// If Tools & Apps is 'selected'... remove 'selected' from siblings and add 'selected' to this.

		// If Compliance Watch is 'selected'... remove 'selected' from siblings and add 'selected' to this.


		/*-------------------------------------------
			File Upload
		-------------------------------------------*/

		// Notes...


		$('.file-attachment input').each( function() {

			var $input	 = $( this ),

				$label	 = $input.next( 'label' ),
				labelVal = $label.html();

			$input.on( 'change', function( e ) {

				var fileName = '';

				if( this.files && this.files.length > 1 )

					fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );

				else if( e.target.value )

					fileName = e.target.value.split( '\\' ).pop();

					if( fileName )

						$label.find( 'span' ).html( fileName );

				else

					$label.html( labelVal );
					$label.addClass('file-attached');

			});

			// Firefox bug fix

			$input

				.on( 'focus', function(){ $input.addClass( 'has-focus' ); })

				.on( 'blur', function(){ $input.removeClass( 'has-focus' ); });

		});


		/*-------------------------------------------
			Match Height
		-------------------------------------------*/

		// Notes...


		$('.categories li a').matchHeight();


		/*-------------------------------------------
			Placeholder
		-------------------------------------------*/

		// Notes...


		$('input, textarea').placeholder();


		/*-------------------------------------------
			Open External URLs in New Tab
		-------------------------------------------*/

		// Notes...


		$('a[rel="external"]').click(function() {

			window.open( $(this).attr('href') );

			return false;

		});


		/*-------------------------------------------
			Smooth Scroll
		-------------------------------------------*/

		// Notes...


		$('.sections a, .back-to-top a').smoothScroll({

			// offset: -20

		});


		/*-------------------------------------------
			Sample Smooth Scroll Structure
		-------------------------------------------*/

		// Notes...


		// $('.answers .top a').smoothScroll({

			// offset: -20

		// });


		/*-------------------------------------------
			Screen Size
		-------------------------------------------*/


		// Add class of "dev" to <body>


		// $("body").addClass("dev");


		// Displays screen size on the fly.


		// var windowWidth = $(window).width();

		// var windowHeight = $(window).height();

		// $("#footer").after('<div id="dev"></div>');

		// $("#dev").text(windowWidth + ' ' + 'W' + ' ' + '/' + ' ' + windowHeight + ' ' + 'H');


	});


	/* On Page Load */


	$(window).load(function() {


		/*-------------------------------------------
			Title
		-------------------------------------------*/

		// Notes...


		/*-------------------------------------------
			Flexslider
		-------------------------------------------*/

		// Notes...


		$(".flexslider").flexslider({

			animation: "fade",
			slideshowSpeed: 5000,
			smoothHeight: false,
			useCSS: false,
			controlNav: false,
			directionNav: true,

			start: function(slider){

				$("body").removeClass("loading");

			}

		});


		/*-------------------------------------------
			Sample Flexslider Structure
		-------------------------------------------*/

		// Notes...


		// $(".flexslider").flexslider({

			// animation: "fade",
			// slideshowSpeed: 5000,
			// useCSS: false,
			// controlNav: false,
			// directionNav: true,
			// start: function(slider){

				// $("body").removeClass("loading");

			// }

		// });


	});


	/* On Window Resize */


	$(window).resize(function() {


		// var loginHeight = $('#login').height();

		// $('#login').css({

			// 'margin-top': -loginHeight

		// });


		/*-------------------------------------------
			Screen Size
		-------------------------------------------*/


		// Displays screen size on the fly.


		// var windowWidth = $(window).width();

		// var windowHeight = $(window).height();

		// $("#dev").text(windowWidth + ' ' + 'W' + ' ' + '/' + ' ' + windowHeight + ' ' + 'H');


	});


})(window.jQuery);