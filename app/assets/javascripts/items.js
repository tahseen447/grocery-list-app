$(function () {
    $(".js-next").on("click", function(event) {
      event.preventDefault();
      var nextId = parseInt($(".js-next").attr("data-id")) + 1;
      $.get("/items/" + nextId + ".json", function(data) {
      var item = data;
      $(".itemName").text(item["name"]);
      $(".itemDescription").text(item["description"]);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", item["id"]);
    });
  });
});

$(function (){
  $(".items-index").on("click", function(event) {
    event.preventDefault();
    $.get("/items" +".json", function(data){
      var items = data;
      items.forEach(function(item){
        var node = document.createElement("li");
        var a = document.createElement('a');
        var linkText = document.createTextNode(item["name"]);
        a.appendChild(linkText);
        a.title = item["name"];
        a.href = "/items/"+item["id"];
        node.appendChild(a);
        document.getElementById("items").appendChild(node);
      })
    });
  });
});
