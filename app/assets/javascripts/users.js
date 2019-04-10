$(function () {
  $(".user_info").on("click", function(event){
    let user_id =$(".user_info").attr("data-id")
    $.get("/users/"+ user_id + ".json", function(data) {
      user_info = data;
      debugger 
      $("#user_info").innerHTML = user_info["name"];
      user_info["lists"].forEach(function(list){
        let node = document.createElement("li");
        let a = document.createElement('a');
        let linkText = document.createTextNode(list["name"]);
        a.appendChild(linkText);
        a.title = list["name"];
        a.href = "/lsits/"+list["id"];
        node.appendChild(a);
        document.getElementById("lists").appendChild(node);
      });
      });

    });
  });
