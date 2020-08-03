$(function(){
  function buildHTML(comment){
    let html = `<p>
                  <strong class="comment-content">
                    <div class="c">
                      <img class="comment-image" src=${comment.user_avatar_url}>
                      <a class="comment-name" href=/users/${comment.user_id}>${comment.user_name}</a>
                      <div class="comment-text">
                        ：
                        ${comment.text}
                      </div>
                    </div>
                  </strong>
                </p>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.comments-border').prepend(html);
      $('.comment-input').val('');
      $('.comment-submit').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})