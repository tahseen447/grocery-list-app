$(function(){
  $('form').submit(function(event) {
    event.preventDefault();
    var values = $(this).serialize();
    var list_function = $.post("/lists", values);

    list_function.done(function(data){
      var list = data;
      $("#list").text(list["name"]);
      debugger
      list["items"].forEach(function(item){
        var node = document.createElement("li");
        var a = document.createElement('a');
        var linkText = document.createTextNode(item["name"]);
        a.appendChild(linkText);
        a.title = item["name"];
        a.href = "/items/"+item["id"];
        node.appendChild(a);
        document.getElementById("list").appendChild(node);
      });
    });
  });
});
