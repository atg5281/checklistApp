$('document').ready(function(){
  $('.delete-item').click(function(){
    alert("click");
    var id = $(this).attr('id').replace('delete-item-', '');
    $.get('/items/deleteItem/'+id);
    $(this).parent().remove();
  })
  
  $('.list-item').click(function(){
    var id = $(this).attr('id').replace('item-', '');
    $.get('/items/checkItem/'+id);
  })
});
