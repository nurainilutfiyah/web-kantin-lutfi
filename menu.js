// const queryString = window.location.search;
// const urlParams = new URLSearchParams(queryString);
// let idOutlet = urlParams.get("data");
// $("#data").val(idOutlet);
$.getJSON("data/menu1.php?data=1", function (result) {
  $.each(result, function (i, data1) {
    $.each(data1, function (j, data2) {
      let id_menu = data2.id_hidangan;
      let nama = data2.hidangan;
      let gambar = data2.gambar;
      let detail = data2.detail;
      let harga = data2.harga;
      let rp = data2.rp;
      let menu1 =
        "<div class='col'><div class='card' style='width: 20rem;'><img class='card-img-top' src='assets/images/menu/" +
        gambar +
        "' alt='Card image cap'><div class='card-block'><h4 class='card-title'>" +
        nama +
        "</h4><p class='card-text'>Price: " +
        rp +
        "</p><a href='#' data-name='" +
        nama +
        "' data-price='" +
        harga +
        "' class='add-to-cart btn btn-primary'>Add to cart</a></div></div></div>";
      $(".food").append(menu1);
    });
  });
});

// let menu1 =
//   "<div class='col'><div class='card' style='width: 20rem;'><img class='card-img-top' src='assets/images/menu/rawon.jpg' alt='Card image cap'><div class='card-block'><h4 class='card-title'>Rawon</h4><p class='card-text'>Price: IDR1,000</p><a href='#' data-name='Rawon' data-price='1000' class='add-to-cart btn btn-primary'>Add to cart</a></div></div></div>";
// $(".food").append(menu1);

// $(function () {
//   $.ajax({
//     type: "GET",
//     url: "data/menu1.php?data=1",
//     success: function (response) {
//       let menu = response.data;
//       for (let i = 0; i < menu.length; i++) {
//         let menu1 =
//           `<div class="col"><div class="card" style="width: 20rem;"><img class="card-img-top" src="assets/images/menu/${menu[i].gambar}" alt="Card image cap"><div class="card-block"><h4 class="card-title">${menu[i].hidangan}</h4><p class="card-text">Price: ${menu[i].rp}</p><a href="#" data-name="${menu[i].hidangan}" data-price="${menu[i].harga}" class="add-to-cart btn btn-primary">Add to cart</a></div></div></div>`;
//         $(".food").append(menu1);
//       }
//     },
//   });
// });
