# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#more-blog-items').on 'shown.bs.collapse', ->
    el1 = $(this).find('.anchor-more-blog-items')
    $('html, body').animate { scrollTop: el1.offset().top }, 500
    return
  return