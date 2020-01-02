# Place all the behaviors and hooks related to the matching controller here.
# All  this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

##  $('#editProduct').on 'click', '', ->
#
#    $.ajax
#      url:'/products/' + $(this).attr("id") + '/edit'
#      success: (result) ->
#        console.log("Success")
#      error: ->
#        console.log("Error")
#$(document).ready(products)
#      type: 'GET'
#      dataType: 'html'
#      error: (e, textStatus, errorThrown) ->
#        $('body').append "AJAX Error: #{textStatus}"
#      success: (data, textStatus, jqXHR) ->
#        $('body').append "Successful AJAX call: #{data}"
#  return
#$(document).ready() ->

products = ->

  $("#product_Lists").dataTable({
    "lengthMenu": [5, 10, 15, 20, 50, 100]

    "columnDefs": [{
      "orderable": false, "targets": [4, 5]
    }]

    "language": {
      "infoEmpty": "No records available",
    }
  } );


  $('.editProduct').on "click", ->
    console.log("hello")

    $.ajax
      url: '/products/' + $(this).attr("product_id") + '/edit',
      #dataType: 'JSON'
      data: {seller_id: $(this).attr("seller_id")}
      success: (result) ->
        console.log("Success")
      error: ->
        console.log("Error")

  $('#addProductForm').validate
    rules: {
      'product[model_no]': {
        required: true,
        minlength: 2,
        unique: true
      },
      'product[name]': {
        required: true,
        minlength: 5
      },
      'product[quantity]': {
        required: true,
        minlength: 1
      },
      'product[price]': {
        required: true
      },
      'product[image]': {
        required: true
      },
    },

    messages: {

      'product[model_no]': {
        required: 'Please enter valid Model number'
        minlength: 'Model number should be more than 2 characters '
        unique: 'Have a unique Model Number'
      },
      'product[name]': {
        required: 'Please enter valid Name'
        minlength: 'Name should be more than 5 characters '
      },
      'product[quantity]': {
        required: 'Please enter valid quantity'
      },
      'product[price]': {
        required: 'Please enter valid price'
      },
      'product[image]': {
        required: 'Please enter valid image'
      },
    },

    errorPlacement: (error, element) ->
      error.insertAfter(element)
      return
    highlight: (element) ->
      $(element).closest('.form-group').removeClass('has-success').addClass 'has-error'
    unhighlight: (element) ->
      $(element).closest('.form-group').removeClass('has-error').addClass 'has-success'

    errorElement: 'span'
    errorClass: 'custom-block'

$(document).ready(products)