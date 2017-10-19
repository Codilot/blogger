# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.btn-level-one').click ->
    $('.collapse').collapse 'show'
    return
  $('#blog-items-level-one').on 'shown.bs.collapse', ->
    el1 = $(this).find('.anchor-level-one')
    $('html, body').animate { scrollTop: el1.offset().top }, 500
    return

  $('#btn-level-two').click ->
    $('.collapse').collapse 'show'
    return
  $('#blog-items-level-two').on 'shown.bs.collapse', ->
    el2 = $(this).find('.anchor-level-two')
    $('html, body').animate { scrollTop: el2.offset().top }, 500
    return  
  return