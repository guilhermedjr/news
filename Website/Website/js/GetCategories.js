$(() => {

  $.post("../lib/GetCategories.aspx", null, (categories) => {
    
     if (categories != null)
     {
        console.log(categories);
        var menu = document.getElementById("#categoriesMenu");
        menu.innerText = categories;        
     }
  })

})