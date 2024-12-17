<!DOCTYPE html>
<html lang="en">

<head>
<title><?= $judul; ?></title>
<!-- Basic Meta Tags -->
<meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />

  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Site Meta Tags -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- Favicon -->
  <link href="<?= base_url('assets/tripbiz/'); ?>" rel="icon" />

  <!-- Preconnect to Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

  <!-- Font Awesome for Icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />

  <!-- Flaticon Icons (from tripbiz folder) -->
  <link href="<?= base_url('assets/tripbiz/'); ?>lib/flaticon/font/flaticon.css" rel="stylesheet" />

  <!-- Owl Carousel Styles (from tripbiz folder) -->
  <link href="<?= base_url('assets/tripbiz/'); ?>lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

  <!-- Lightbox Styles (from tripbiz folder) -->
  <link href="<?= base_url('assets/tripbiz/'); ?>lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

  <!-- Range Selector Slider Style (from CDN) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/css/ion.rangeSlider.min.css" />

  <!-- Bootstrap Core CSS (from tripbiz folder) -->
  <link rel="stylesheet" type="text/css" href="<?= base_url('assets/tripbiz/'); ?>css/bootstrap.css" />

  <!-- Custom Styles for This Template (from tripbiz folder) -->
  <link href="<?= base_url('assets/tripbiz/'); ?>css/style.css" rel="stylesheet" />

  <!-- Responsive Styles (from tripbiz folder) -->
  <link href="<?= base_url('assets/tripbiz/'); ?>css/responsive.css" rel="stylesheet" />

</head>

<body>
  <!-- Navbar Start -->
  <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="<?= base_url() ?>">
            <span>
            <?= $konfig->judul_website; ?>
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <a class="nav-link" href="<?= base_url() ?>">Home
                    <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                <?php foreach ($kategori as $kate) { ?>
                  <a href="<?= base_url('home/kategori/' . $kate['id_kategori']) ?>" class="nav-item nav-link">
                      <?= $kate['nama_kategori'] ?>
                  </a>
                <?php } ?>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
              </form>
            </div>
            <div class="quote_btn-container ml-0 ml-lg-4 d-flex justify-content-center">
              <a href="<?= base_url("auth") ?>">Login</a>
            </div>
          </div>
        </nav>
      </div>
    </header>
  <!-- Navbar End -->


    <!-- Detail Start -->
    <div class="container py-5">
      <div class="row pt-5">
        <div class="col-lg-12">
          <div class="d-flex flex-column text-left mb-3">
            <p class="section-title pr-5" style="color: white;">
              <span class="pr-2">Blog Detail Page</span>
            </p>
            <h1 class="mb-3" style="color: white;"><?= $konten->judul; ?></h1>
            <div class="d-flex">
              <p class="mr-3" style="color: white;"><i class="fa fa-user text-primary"></i> <?= $konten->nama; ?></p>
              <p class="mr-3" style="color: white;">
                <i class="fa fa-folder text-primary"></i> <?= $konten->nama_kategori; ?>
              </p>
            </div>
          </div>
          <div class="mb-5"style="color: white;">
            <img
              class="img-fluid rounded w-100 mb-4"
              src="<?= base_url('assets/upload/konten/' . $konten->foto) ?>"
            />
            <?= $konten->keterangan; ?>
          </div>
        </div>

        </div>
      </div>
    </div>
    <!-- Detail End -->

  <!-- Footer Start -->
      
  <div class="container-fluid text-white mt-5 py-5 px-sm-3 px-md-5">
    <div class="row pt-5"style="border-top: 1px solid rgba(23, 162, 255, 0.2);">
      <div class="col-lg-3 col-md-6 mb-5">
        <a href="" class="navbar-brand font-weight-bold text-primary m-0 mb-4 p-0"
          style="font-size: 40px; line-height: 40px">
          <i class="flaticon-043-teddy-bear"></i>
          <span class="text-white"><?= $konfig->judul_website; ?></span>
        </a>
        <p>
        <?= $konfig->profil_website; ?>
        </p>
        
      </div>
      <div class="col-lg-3 col-md-6 mb-5">
        <h3 class="text-light mb-4">Contact Us</h3>
        <div class="d-flex">
          <h4 class="fa fa-map-marker-alt text-light"></h4>
          <div class="pl-3">
            <h5 class="text-white">Alamat</h5>
            <p><?= $konfig->alamat; ?></p>
          </div>
        </div>
        <div class="d-flex">
          <h4 class="fa fa-envelope text-light"></h4>
          <div class="pl-3">
            <h5 class="text-white">Email</h5>
            <p><?= $konfig->email; ?></p>
          </div>
        </div>
        <div class="d-flex">
          <h4 class="fa fa-phone-alt text-light"></h4>
          <div class="pl-3">
            <h5 class="text-white">Phone</h5>
            <p>+<?= $konfig->no_wa; ?></p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-5">
        <h3 class="text-light mb-4">Quick Links</h3>
        <div class="d-flex flex-column justify-content-start">
          <a class="text-white mb-2" href="<?= base_url('') ?>"><i class="fa fa-angle-right mr-2"></i> Home</a>
          <?php foreach ($kategori as $kate) { ?>
          <a class="text-white mb-2" href="<?= base_url('home/kategori/'.$kate['id_kategori']) ?>">
            <i class="fa fa-angle-right mr-2"></i>
            <?= $kate['nama_kategori'] ?>
          </a>
          <?php }?>
        </div>
      </div>
      
      
    </div>
  </div>
  </section>

  <!-- end info section -->



  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

  <!-- range selector slider script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.0/js/ion.rangeSlider.min.js"></script>

  <script>
    $(".js-range-slider").ionRangeSlider({
      skin: "round",
      type: "double",
      min: 200,
      max: 10000,
      from: 200,
      to: 500,
      grid: true
    });
  </script>
  <!-- JavaScript Libraries -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/easing/easing.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/isotope/isotope.pkgd.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/lightbox/js/lightbox.min.js"></script>

  <!-- Contact Javascript File -->
  <script src="<?= base_url('assets/front/'); ?>mail/jqBootstrapValidation.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>mail/contact.js"></script>

  <!-- Template Javascript -->
  <script src="<?= base_url('assets/front/'); ?>js/main.js"></script>
</body>

</html>