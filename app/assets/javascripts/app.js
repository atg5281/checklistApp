$('document').ready(function(){
  $('.list-item').click(function(){
    var id = $(this).attr('id').replace('item-', '');
    $.get('/items/checkItem/'+id)
  })
});
