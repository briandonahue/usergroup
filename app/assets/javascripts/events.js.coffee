# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ -> 
  initDateFields()

initDateFields = -> 
  $('.date').datepicker().change -> updateDateFields(this)

updateDateFields = (el) ->
  $el = $(el)
  prefix = $el.attr('id').replace(/_picker$/g, "")
  vals = $el.val().split('/')
  $("##{prefix}_1i").val(vals[2]);
  $("##{prefix}_2i").val(vals[0]);
  $("##{prefix}_3i").val(vals[1]);
    
