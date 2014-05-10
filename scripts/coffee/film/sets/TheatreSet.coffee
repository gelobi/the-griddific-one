Set = require('tiny-filmmaking-studio').Set

module.exports = class TheatreSet extends Set

	constructor: ->

		super

		@id = "theatre"

		@container = @makeSetContainer([166970])
		.set 'id', 'theatre-container'

		do @_prepareBrowserMockup

		do @_prepareFakeTheatre

		do @_prepareTheBall

	_prepareBrowserMockup: ->

		@_browserMockup = @_makeEl '#theatre-browserMockup'
		.html """

			<div id="theatre-browserMockup-head">

				<div class="theatre-browserMockup-head-winButton n1"></div>
				<div class="theatre-browserMockup-head-winButton n2"></div>
				<div class="theatre-browserMockup-head-winButton n3"></div>

			</div>

			"""
		.inside @container

		@browserViewport = @_makeEl "#theatre-browserViewport"
		.inside @_browserMockup

		@_setupDomEl 'Theatre', 'Browser Viewport', @browserViewport, [
			'opacity'
		]

		@_setupDomEl 'Theatre', 'Browser Mockup', @_browserMockup, [
			'opacity'
		]

	_prepareFakeTheatre: ->

		@fakeTheatre = @_makeEl '#theatre-fakeTheatre'
		.inside @browserViewport

		@_setupDomEl 'Theatre', 'Fake Theatre', @fakeTheatre, [
			'opacity'
		]

	_prepareTheBall: ->

		@theBall = @_makeEl '#theatre-theBall'
		.inside @browserViewport

		@_setupDomEl 'Theatre', "The Ball", @theBall, [
			'translation', 'scale'
		]