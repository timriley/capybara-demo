$(document).ready(function() {
  var page_num = 1;
  
  $('#more').click(function(e) {
    e.preventDefault();
    page_num ++;
    
    $.getJSON('/articles.json?page=' + (page_num), function(data) {
      $.each(data, function(i, article) {
        var article = article.article;
        $('#articles').append('<li class="article"><a href="/articles/' + article.id + '">' + article.title + '</a></li>');
      });
    });
  });
});