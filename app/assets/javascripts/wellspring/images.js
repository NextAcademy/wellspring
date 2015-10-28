$(document).ready(function() {

  $("#images-button").click(function(e) {
    e.preventDefault();

    $("#images-panel").toggle();
  });

  $(".modal-close-button").click(function() {
    $(this).parents(".modal").hide();
  });

  $("body").on("click", ".show-url", (function(e) {
    window.prompt("Copy this URL", $(this).attr("data-url"));
  }));

  $("body").on("click", ".modal .image-upload-button", (function(e) {
    $(".image-upload-form").toggle();
  }));

  $(".modal .image-upload-form").submit(function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    var fd = new FormData(this);
    fd.append("label", "WEBUPLOAD");

    $.ajax({
      url: $(this).attr("action"),
      method: "POST",
      data: fd,
      enctype: "multipart/form-data",
      processData: false,
      contentType: false,
      success: function(data) {
        $("#modal-images-table-body").prepend("\
          <tr>\
            <td><img src='"+data.file.preview.url+"'></td>\
            <td>less than a minute ago</td>\
            <td><button class='show-url' data-url='"+data.file.url+"'>Show URL</button></td>\
            <td><a class='image-delete-button' rel='nofollow' href='/admin/images/"+data.id+"'>Destroy</a></td>\
          </tr>\
          ");
      },
      error: function() {
        alert("Create action has failed.");
      }
    });
  });

  $("#modal-images-table-body").on("click", ".image-delete-button", (function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    var confirmation = window.confirm("Are you sure?");
    debugger
    if (confirmation) {
      $.ajax({
        url: $(this).attr("href"),
        method: "DELETE"
        // - beware of commas!
        // success: function() {
        //   $(this).parents("tr").remove();
        // },
        // error: function() {
        //   alert("Delete action has failed.");
        // }
      });
      $(this).parents("tr").remove();
    }
  }));

});
