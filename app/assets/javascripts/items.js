$(function () {
    $(".js-next").on("click", function(event) {
      event.preventDefault();
      let nextId = parseInt($(".js-next").attr("data-id")) + 1;
      $.get("/items/" + nextId + ".json", function(data) {
      let jsItem = new Item(data);
      $(".itemName").text(jsItem.name);
      $(".itemDescription").text(jsItem.desription);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", jsItem.id);
    });
  });
});

$(function(){
  $(".sort-items").on("click", function(e){
    e.preventDefault();
    $.get("/items.json", function(items){
      items.sort(function(a, b) {
        const  nameA = a.name.toUpperCase(); // ignore upper and lowercas
        const nameB = b.name.toUpperCase(); // ignore upper and lowercase
        if (nameA < nameB) {
          return -1;
        }
        if (nameA > nameB) {
          return 1;
        }
        // names must be equal
        return 0;
      });
      $("#items").empty();
      //document.getElementById("items").innerHTML = "";
      items.forEach(item => {
        let jsItem = new Item(item);
        jsItem.formatItem();
      });
});
});
});

$(function (){
  $(".items-index").on("click", function(event) {
    event.preventDefault();
    $.get("/items" +".json", function(data){
      var items = data;
      items.forEach(item => {
        let jsItem = new Item(item);
        jsItem.formatItem();
      });
    });
  });
});

function Item(item) {
  this.id = item.id;
  this.name = item.name;
  this.description = item.description;
  this.department = item.department;
};

Item.prototype.formatItem = function() {
    let node = document.createElement("li");
    let a = document.createElement('a');
    let linkText = document.createTextNode(this.name);
    a.appendChild(linkText);
    a.title = this.name;
    a.href = "/items/"+this.id;
    node.appendChild(a);
    document.getElementById("items").appendChild(node);
  };
