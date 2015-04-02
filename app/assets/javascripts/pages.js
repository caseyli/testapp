$(function(){

  $(document).on("click", ".show-contact-form", showContactForm);
  $(document).on("click", ".show-news-posts", showNewsPosts);

});

function showNewsPosts() {
  $.ajax({
    url : "/news_posts",
    type : "GET",
    dataType : "JSON",
    success : function(data){
      $.each(data, function(){
        $(".news-posts").append("<h2>" + this.title + "</h2>");
      });
    },
    error : function(){
      alert("Error");
    }
  });

  return false;
}

function showContactForm() {
  $(".contact-us-message").html("We're sorry, we are not talking to anyone right now.");

  return false;
}

  
