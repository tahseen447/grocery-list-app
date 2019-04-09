$(function(){
  $('form').submit(function(event) {
    event.preventDefault();
    let values = $(this).serialize();
    let list_function = $.post("/lists", values);

    list_function.done(function(data){
      let list = data;
      $("#list").text(list["name"]);
      list["items"].forEach(function(item){
        let jsItem = Item.new(item);
        jsItem.formatItem();
      });
    });
  });
});
