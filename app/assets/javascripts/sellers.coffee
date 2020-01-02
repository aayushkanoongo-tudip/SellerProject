# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
sellers = ->

  $("#seller_Lists").dataTable
    "lengthMenu": [ 5, 10, 15, 20, 50, 100 ]
    "columnDefs": [ {
      "targets": 2,
      "orderable": false
    } ]
    "language": {
      "infoEmpty": "No records available",
    }

  $("#sellerForm").validate
    rules: {
      'seller[s_name]': {
        required: true
        minlength: 5
      }
    },
    messages: {
      'seller[s_name]': {
        required: 'Please enter valid Name'
        minlength: 'Name should be more than 5 characters '
      }
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


  $("#editSellerForm").validate
    rules: {
      'seller[s_name]': {
        required: true
        minlength: 5
      }
    },
    messages: {
      'seller[s_name]': {
        required: 'Please edit valid Name'
        minlength: 'Name should be more than 5 characters '
      }
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

$(document).ready(sellers)

