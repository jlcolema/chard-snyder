CKEDITOR.on( 'instanceReady', function( ev ) {

	ev.editor.dataProcessor.htmlFilter.addRules({

		elements: {

			$: function (element) {

				// Add 'video' class name to div that wraps <iframe>

				if (element.name == 'div' && element.children[0].name == 'iframe') {

					element.attributes.class = 'video';

					return element;

				}

				// Remove width and height attributes from <img> element

				if (element.name == 'img') {

					if (element.attributes.style) {

						delete element.attributes.style;

					}

				}

				// Change <p> element that wraps an image to <div>

				if (element.name == 'p' && element.children[0].name == 'img') {

					element.name = 'div';

				}

			}

		}

	});

});