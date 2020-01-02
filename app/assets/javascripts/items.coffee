# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
items = ->

  $("#item_Lists").dataTable
    "lengthMenu": [ 5, 10, 15, 20, 50, 100 ]
    "columnDefs": [ {
      "targets": 2,
      "orderable": false
    } ]
    "language": {
      "infoEmpty": "No records available",
    }

    $('#newItemForm').validate
      rules: {
        'item[name]': {
          required: true,
          minlength: 5
        },
        'item[desc]': {
          required: true,
          minlength: 10
        },
      },
      messages: {
        'item[name]': {
          required: 'Please enter valid Name'
          minlength: 'Name should be more than 5 characters '
        },
        'item[desc]': {
          required: 'Enter valid description'
          minlength: 'Name should be more than 10 characters '
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


    $('#editItemForm').validate
      rules: {
        'item[name]': {
          required: true,
          minlength: 5
        },
        'item[desc]': {
          required: true,
          minlength: 10
        },
      },
      messages: {
        'item[name]': {
          required: 'Please edit valid Name'
          minlength: 'Name should be more than 5 characters '
        },
        'item[desc]': {
          required: 'Edit valid description'
          minlength: 'Name should be more than 10 characters '
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

$(document).ready(items)