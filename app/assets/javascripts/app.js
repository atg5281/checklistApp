$('document').ready(function(){
  $('.list-item').click(function(){
    var id = $(this).attr('id').replace('item-', '');
    $.get('/items/checkItem/'+id);
  })

  $('span.delete-item').click(function(){
    var id = $(this).attr('id').replace('delete-item-', '');
    $.get('/items/deleteItem/'+id);
    $(this).parent().remove();
  })
});
