
/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


var gulp = require('gulp');


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


var concat = require('gulp-concat');

var uglify = require('gulp-uglify');

// var rename = require('gulp-rename');

var sass = require('gulp-sass');

var autoprefixer = require('gulp-autoprefixer');

var imagemin = require('gulp-imagemin');

var cache = require('gulp-cache');

var notify = require('gulp-notify');

var livereload = require('gulp-livereload');


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('js', function() {

	return gulp.src([

		'src/js/jquery.js',
		'src/js/jquery-ui.js',
		'src/js/modernizr.js',
		'src/js/picturefill.js',
		'src/js/match-height.js',
		'src/js/flexslider.js',
		'src/js/select.js',
		'src/js/placeholder.js',
		'src/js/scroll.js',
		'src/js/functions.js'

	])

	.pipe(concat('scripts.js'))

	// .pipe(rename({suffix: '.min'}))

	.pipe(uglify())

	.pipe(gulp.dest('assets/js'));

});


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('sass', function() {

	return gulp.src('src/scss/**/*.scss')

	.pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))

	.pipe(autoprefixer({

		browsers: ['last 5 versions'],
		cascade: false

	}))

	.pipe(gulp.dest('assets/css'))

	.pipe(livereload());

});


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('img', function() {

	return gulp.src('src/img/**/*')

	.pipe(imagemin({

		optimizationLevel: 5,
		progressive: true,
		interlaced: true

	}))

	.pipe(gulp.dest('assets/img'));

});


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('watch', function() {

	livereload.listen();

	// Notes...

	gulp.watch('templates/default_site/**/*.html').on('change', function(file) {

		livereload.changed(file.path);

	});

	// Notes...

	gulp.watch('src/js/*.js', ['js']);

	// Notes...

	gulp.watch('src/scss/**/*.scss', ['sass']);

	// Notes...

	gulp.watch('src/img/**/*', ['img']);

});


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('clear', function (done) {

	return cache.clearAll(done);

});


/*-------------------------------------------
	Title
-------------------------------------------*/

// Notes...


gulp.task('default', ['js', 'sass', 'img', 'watch']);
