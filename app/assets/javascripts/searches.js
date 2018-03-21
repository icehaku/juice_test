$(function(){
  $("#search_term").autocomplete({
    source: function(request, response) {
      $.ajax({
        url: gon.save_incomplete_searches_url,
        dataType: "json",
        data: {
          term: request.term
        },
        success: function(data){
          response(data);
        }
      });
    },
    minLength: 2,
  });
});
