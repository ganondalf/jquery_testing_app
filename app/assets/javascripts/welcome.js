var all = {

  onReady: function(){
    $("h1").on("click", all.changeText)
    },

  changeText: function(){
    var h1TagText = $(this).text();
    $.ajax({
      url: '/reverse',
      type: 'GET',
      dataType: 'json',
      context: this, // this is to ensure that it changes the specif
      data: { h1Text: h1TagText }
    }).done(function(response){
      $(this).text(response.h1Text);
    })
  }
}

$(document).ready(all.onReady);

