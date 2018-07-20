$(function() {
  $('.marquee').marquee({
    gap: 0,
    delayBeforeStart: 0,
    startVisible: true,
    duplicated: true
  });
  $('.grid').packery({
    itemSelector: 'figure',
    layoutMode: 'fitRows',
    percentPosition: true,
    transitionDuration: 0
  });
  $('.grid').find('figure').each(function(i, figure) {
    var draggie, grid;
    draggie = new Draggabilly(figure);
    grid = $(this).parents('.grid');
    return grid.packery('bindDraggabillyEvents', draggie);
  });
  return $('main').on('click', function() {
    return $(this).find('section').toggleClass('hidden');
  });
});
