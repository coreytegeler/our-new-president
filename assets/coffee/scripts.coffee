$ ->
	$('.marquee').marquee
		gap: 0,
		delayBeforeStart: 0,
		startVisible: true,
		duplicated: true
	# .on 'mouseenter', () ->
	# 	$(this).marquee('pause')
	# .on 'mouseleave', (e) ->
	# 	$(this).marquee('resume')

	$('.grid').packery
		itemSelector: 'figure',
		layoutMode: 'fitRows',
		percentPosition: true,
		# gutter: 10,
		transitionDuration: 0

	$('.grid').find('figure').each (i, figure) ->
  	draggie = new Draggabilly( figure )
  	grid = $(this).parents('.grid')
	  grid.packery( 'bindDraggabillyEvents', draggie )

	 $('main').on 'click', () ->
	 		$(this).find('section').toggleClass('hidden')
