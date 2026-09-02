<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #f7f8fc;
            --surface: #ffffff;
            --surface-2: #f1f5f9;
            --text: #172033;
            --muted: #667085;
            --primary: #635bff;
            --primary-dark: #4f46e5;
            --accent: #ff6b35;
            --success: #16a34a;
            --danger: #ef4444;
            --border: #e7eaf0;
            --shadow: 0 10px 30px rgba(23,32,51,.07);
            --shadow-lg: 0 20px 55px rgba(23,32,51,.12);
            --radius: 18px;
            --container: 1240px;
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, "Segoe UI",
                         Roboto, Arial, sans-serif;
            color: var(--text);
            background: var(--bg);
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 22px;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.94);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(18px);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 22px;
        }

        .brand-wrap {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: Poppins, sans-serif;
            font-weight: 700;
            font-size: 22px;
            white-space: nowrap;
        }

        .brand::before {
            content: "N";
            display: grid;
            place-items: center;
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: var(--primary);
            color: white;
            font-size: 18px;
            box-shadow: 0 7px 18px rgba(99,91,255,.28);
        }

        .brand .accent {
            color: var(--primary);
        }

        .main-nav {
            flex: 1;
        }

        .main-nav ul {
            display: flex;
            justify-content: center;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .main-nav li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 13px;
            border-radius: 10px;
            color: #475467;
            font-weight: 600;
            font-size: 14px;
            transition: .2s;
        }

        .main-nav li a:hover {
            background: #f0efff;
            color: var(--primary);
        }

        .header-tools {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            display: flex;
            align-items: center;
            gap: 9px;
            background: var(--surface-2);
            border: 1px solid transparent;
            padding: 10px 13px;
            border-radius: 12px;
            width: 250px;
            transition: .2s;
        }

        .search:focus-within {
            background: white;
            border-color: #c9c5ff;
            box-shadow: 0 0 0 4px rgba(99,91,255,.08);
        }

        .search input {
            border: 0;
            outline: 0;
            background: transparent;
            width: 100%;
            color: var(--text);
        }

        .search input::placeholder {
            color: #98a2b3;
        }

        .icon-btn,
        .cart {
            position: relative;
            border: 0;
            background: white;
            color: #475467;
            width: 42px;
            height: 42px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .icon-btn:hover,
        .cart:hover {
            background: #f0efff;
            color: var(--primary);
            transform: translateY(-1px);
        }

        .cart-count {
            position: absolute;
            top: -3px;
            right: -3px;
            background: var(--accent);
            color: white;
            min-width: 19px;
            height: 19px;
            padding: 0 5px;
            border-radius: 99px;
            display: grid;
            place-items: center;
            font-size: 10px;
            font-weight: 800;
            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
        }

        /* =========================
           MOBILE MENU
        ========================= */

        .mobile-menu {
            display: none;
            background: white;
            border-top: 1px solid var(--border);
        }

        .mobile-menu a {
            display: block;
            padding: 10px 4px;
            font-weight: 600;
            color: #475467;
        }

        .mobile-menu a:hover {
            color: var(--primary);
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            margin: 18px auto 0;
            max-width: calc(var(--container) - 44px);
            min-height: 455px;
            border-radius: 26px;
            overflow: hidden;

            display: flex;
            align-items: center;

            background:
                linear-gradient(
                    90deg,
                    rgba(13,18,38,.88) 0%,
                    rgba(13,18,38,.68) 47%,
                    rgba(13,18,38,.18) 100%
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;

            color: white;
        }

        .hero .container {
            padding: 62px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(34px,5vw,58px);
            line-height: 1.05;
            letter-spacing: -.035em;
            max-width: 690px;
            margin: 0 0 18px;
        }

        .hero p {
            max-width: 650px;
            color: rgba(255,255,255,.82);
            font-size: 17px;
            margin: 0 0 28px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 12px;
            font-weight: 700;
            border: 1px solid transparent;
            transition: .2s;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 9px 22px rgba(99,91,255,.25);
        }

        .btn-primary:hover {
            background: var(--primary-dark);
        }

        .btn-ghost {
            background: rgba(255,255,255,.1);
            border-color: rgba(255,255,255,.3);
            color: white;
            backdrop-filter: blur(8px);
        }

        .btn-ghost:hover {
            background: rgba(255,255,255,.18);
        }

        /* =========================
           SECTIONS
        ========================= */

        .section {
            padding: 64px 0;
        }

        .title {
            margin-bottom: 28px;
            text-align: center;
        }

        .title h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            margin: 0 0 7px;
            letter-spacing: -.025em;
        }

        .title p {
            margin: 0;
        }

        .muted {
            color: var(--muted);
        }

        .grid {
            display: grid;
            gap: 18px;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            grid-template-columns: repeat(6,1fr);
        }

        .cat-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 20px 14px;
            text-align: center;
            box-shadow: 0 4px 16px rgba(23,32,51,.03);
            transition: .22s;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            border-color: #cbc8ff;
            box-shadow: var(--shadow);
        }

        .cat-card .icon {
            width: 52px;
            height: 52px;
            margin: 0 auto 12px;
            border-radius: 15px;
            display: grid;
            place-items: center;
            background: #f0efff;
            color: var(--primary);
            font-size: 21px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 14px;
        }

        .cat-card .muted {
            font-size: 12px;
            margin-top: 5px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            grid-template-columns: repeat(4,1fr);
        }

        .product {
            position: relative;
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 4px 18px rgba(23,32,51,.035);
            transition: .22s;
            min-width: 0;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-media {
            position: relative;
            background: #f4f5f7;
            overflow: hidden;
        }

        .product img {
            width: 100%;
            height: 235px;
            object-fit: cover;
            display: block;
            transition: .35s;
        }

        .product:hover img {
            transform: scale(1.035);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            z-index: 2;
            padding: 6px 9px;
            border-radius: 8px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
        }

        .product-body {
            padding: 16px 16px 8px;
        }

        .product h5 {
            font-size: 15px;
            margin: 0 0 5px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .product-category {
            text-transform: capitalize;
            font-size: 12px;
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 8px;
            margin-top: 14px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: #98a2b3;
            text-decoration: line-through;
            font-size: 12px;
            font-weight: 500;
            margin-left: 5px;
        }

        .rating {
            color: #f59e0b;
            font-size: 12px;
            white-space: nowrap;
        }

        .product-footer {
            display: flex;
            gap: 8px;
            padding: 12px 16px 16px;
        }

        .add-btn {
            flex: 1;
            border: 0;
            background: var(--text);
            color: white;
            min-height: 40px;
            border-radius: 10px;
            font-weight: 700;
            transition: .2s;
        }

        .add-btn:hover {
            background: var(--primary);
        }

        .add-btn:disabled {
            opacity: .75;
        }

        .wish-btn {
            width: 42px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 10px;
            color: #667085;
        }

        .wish-btn:hover {
            color: var(--danger);
            border-color: #fecaca;
            background: #fff7f7;
        }

        /* =========================
           FLASH SALE
        ========================= */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            background: white;
            border: 1px solid var(--border);
            border-radius: 22px;
            overflow: hidden;
            box-shadow: var(--shadow);
        }

        .deal img {
            width: 100%;
            height: 360px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal h3 {
            font-family: Poppins, sans-serif;
            font-size: 34px;
            margin: 8px 0;
        }

        .deal .price {
            font-size: 28px;
        }

        .deal-discount {
            background: #fff0eb;
            color: #e94f20;
            padding: 7px 10px;
            border-radius: 8px;
            font-weight: 800;
        }

        .timer {
            display: flex;
            gap: 8px;
            margin: 22px 0;
        }

        .time-box {
            background: #f5f6fa;
            color: var(--text);
            padding: 10px 12px;
            border-radius: 10px;
            min-width: 70px;
            text-align: center;
            border: 1px solid var(--border);
        }

        .time-box div:first-child {
            font-size: 19px;
            font-weight: 800;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(2,1fr);
            gap: 18px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--border);
            padding: 22px;
            border-radius: 18px;
            box-shadow: 0 4px 18px rgba(23,32,51,.03);
        }

        .testimonial p {
            color: #475467;
            min-height: 52px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: linear-gradient(135deg,#171d35,#2a3152);
            color: white;
            border-radius: 22px;
            padding: 42px;
            text-align: center;
            box-shadow: var(--shadow-lg);
        }

        .newsletter h3 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
            margin: 0 0 6px;
        }

        .newsletter p {
            color: #cbd2e1;
            margin: 0 0 20px;
        }

        .newsletter input {
            min-height: 46px;
            padding: 0 15px;
            border-radius: 11px;
            border: 0;
            width: 340px;
            outline: 0;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: white;
            border-top: 1px solid var(--border);
            padding: 44px 0 25px;
            color: var(--muted);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr;
            gap: 40px;
        }

        .footer-title {
            font-weight: 800;
            color: var(--text);
            margin-bottom: 10px;
        }

        .footer-links {
            display: grid;
            gap: 7px;
        }

        .footer-links a:hover {
            color: var(--primary);
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 15px;
        }

        .socials .icon-btn {
            border: 1px solid var(--border);
        }

        .copyright {
            text-align: center;
            border-top: 1px solid var(--border);
            margin-top: 28px;
            padding-top: 20px;
            font-size: 12px;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width:1100px) {

            .categories {
                grid-template-columns: repeat(3,1fr);
            }

            .products {
                grid-template-columns: repeat(3,1fr);
            }

            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
            }

            .header-inner {
                justify-content: space-between;
            }
        }

        @media(max-width:800px) {

            .search {
                width: min(330px,55vw);
            }

            .hero {
                margin: 10px;
                min-height: 430px;
            }

            .hero .container {
                padding: 42px 30px;
            }

            .hero h1 {
                font-size: 38px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal img {
                height: 260px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:600px) {

            .container {
                padding: 0 16px;
            }

            .header-inner {
                min-height: 68px;
                gap: 8px;
            }

            .brand {
                font-size: 18px;
            }

            .brand::before {
                width: 34px;
                height: 34px;
            }

            .search {
                width: auto;
                flex: 1;
                max-width: none;
            }

            .header-tools .icon-btn:first-child,
            .header-tools .icon-btn:nth-child(2) {
                display: none;
            }

            .categories,
            .products {
                grid-template-columns: repeat(2,1fr);
                gap: 12px;
            }

            .cat-card {
                padding: 16px 8px;
            }

            .product img {
                height: 180px;
            }

            .product-body {
                padding: 12px 12px 6px;
            }

            .product-footer {
                padding: 10px 12px 12px;
            }

            .product .rating {
                display: none;
            }

            .section {
                padding: 44px 0;
            }

            .title h2 {
                font-size: 25px;
            }

            .hero {
                min-height: 460px;
                border-radius: 20px;
            }

            .hero .container {
                padding: 32px 24px;
            }

            .hero h1 {
                font-size: 34px;
            }

            .hero p {
                font-size: 15px;
            }

            .btn {
                width: 100%;
            }

            .hero-actions {
                display: grid;
            }

            .deal .content {
                padding: 26px 22px;
            }

            .deal h3 {
                font-size: 27px;
            }

            .timer {
                overflow: auto;
            }

            .time-box {
                min-width: 64px;
            }

            .newsletter {
                padding: 32px 20px;
            }

            .newsletter input {
                width: 100%;
            }

            .newsletter form {
                display: grid !important;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width:390px) {

            .categories,
            .products {
                grid-template-columns: 1fr;
            }

            .product img {
                height: 220px;
            }
        }
    </style>
</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header>

    <div class="container header-inner">

        <div class="brand-wrap">

            <button
                class="mobile-toggle"
                id="mobileToggle"
                aria-label="Open menu">
                <i class="fas fa-bars"></i>
            </button>

            <a class="brand" href="#">
                <span>
                    Nexus<span class="accent">Shop</span>
                </span>
            </a>

        </div>

        <nav class="main-nav" aria-label="Primary navigation">

            <ul>

                <li>
                    <a href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-th-large"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tag"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fas fa-info-circle"></i>
                        About
                    </a>
                </li>

            </ul>

        </nav>

        <div class="header-tools">

            <div class="search">

                <i class="fas fa-search"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">

                <button
                    class="icon-btn"
                    id="searchBtn"
                    aria-label="Search">

                    <i class="fas fa-arrow-right"></i>

                </button>

            </div>

            <a
                class="icon-btn"
                title="Account"
                href="#">

                <i class="far fa-user"></i>

            </a>

            <a
                class="icon-btn"
                title="Wishlist"
                href="#">

                <i class="far fa-heart"></i>

            </a>

            <a
                class="cart"
                href="#"
                id="cartBtn"
                title="View cart">

                <i class="fas fa-shopping-cart"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </a>

        </div>

    </div>

    <!-- Mobile Menu -->

    <div
        id="mobileMenu"
        class="mobile-menu">

        <div class="container">

            <nav>

                <a href="#">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Trending</a>
                <a href="#deals">Deals</a>
                <a href="#about">About</a>

            </nav>

        </div>

    </div>

</header>


<main>

<!-- =========================
     HERO
========================= -->

<section class="hero">

    <div class="container">

        <h1>
            Discover Products
            You'll Love
        </h1>

        <p>
            Shop the latest fashion, technology and accessories.
            Enjoy exclusive offers, premium products and fast delivery.
        </p>

        <div class="hero-actions">

            <button
                class="btn btn-primary"
                id="shopNow">

                Shop Now

                <i class="fas fa-arrow-right"></i>

            </button>

            <button
                class="btn btn-ghost"
                id="exploreDeals">

                Explore Deals

            </button>

        </div>

    </div>

</section>


<!-- =========================
     CATEGORIES
========================= -->

<section
    class="section container"
    id="categories">

    <div class="title">

        <h2>
            Shop by Category
        </h2>

        <p class="muted">
            Find exactly what you're looking for.
        </p>

    </div>

    <div
        class="grid categories"
        id="categoriesGrid">

    </div>

</section>


<!-- =========================
     PRODUCTS
========================= -->

<section
    class="section container"
    id="products">

    <div class="title">

        <h2>
            Trending Products
        </h2>

        <p class="muted">
            Popular products selected for you.
        </p>

    </div>

    <div
        class="grid products"
        id="productsGrid">

    </div>

</section>


<!-- =========================
     DEAL
========================= -->

<section
    class="section container"
    id="deals">

    <div class="title">

        <h2>
            Flash Sale
        </h2>

        <p class="muted">
            Limited-time offer. Don't miss it!
        </p>

    </div>

    <div class="deal">

        <img
            src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80"
            alt="MacBook Air">

        <div class="content">

            <div
                style="
                color:var(--accent);
                font-weight:800;
                font-size:12px;
                text-transform:uppercase;
                letter-spacing:.1em;
                ">

                Limited Offer

            </div>

            <h3>
                MacBook Air M2
            </h3>

            <p class="muted">
                Thin, light and powerful —
                now with M2 performance.
            </p>

            <div class="timer">

                <div class="time-box">
                    <div id="dealDays">0</div>
                    <small>Days</small>
                </div>

                <div class="time-box">
                    <div id="dealHours">00</div>
                    <small>Hours</small>
                </div>

                <div class="time-box">
                    <div id="dealMinutes">00</div>
                    <small>Minutes</small>
                </div>

                <div class="time-box">
                    <div id="dealSeconds">00</div>
                    <small>Seconds</small>
                </div>

            </div>

            <div
                style="
                display:flex;
                align-items:center;
                gap:12px;
                ">

                <div class="price">
                    $999

                    <span class="old-price">
                        $1,199
                    </span>
                </div>

                <div class="deal-discount">
                    -17%
                </div>

            </div>

            <p>
                Only
                <strong>12</strong>
                items left at this price!
            </p>

            <button
                class="btn btn-primary"
                id="buyDeal">

                Buy Now

                <i class="fas fa-shopping-cart"></i>

            </button>

        </div>

    </div>

</section>


<!-- =========================
     TESTIMONIALS
========================= -->

<section class="section container">

    <div class="title">

        <h2>
            What Our Customers Say
        </h2>

        <p class="muted">
            Real reviews from our customers.
        </p>

    </div>

    <div class="testimonials">

        <div class="testimonial">

            <div class="rating">
                ★★★★★
            </div>

            <p>
                "Fast shipping and excellent customer
                support. The product exceeded my expectations!"
            </p>

            <strong>
                Ava Martin
            </strong>

            <div class="muted">
                Verified Buyer
            </div>

        </div>


        <div class="testimonial">

            <div class="rating">
                ★★★★☆
            </div>

            <p>
                "Great selection and the checkout
                was smooth. Will shop again."
            </p>

            <strong>
                Michael Lee
            </strong>

            <div class="muted">
                Frequent Buyer
            </div>

        </div>

    </div>

</section>


<!-- =========================
     NEWSLETTER
========================= -->

<section class="section container">

    <div class="newsletter">

        <h3>
            Stay in the Loop
        </h3>

        <p>
            Subscribe to receive exclusive offers
            and new arrivals.
        </p>

        <form
            id="newsletterForm"
            style="
            display:flex;
            justify-content:center;
            gap:8px;
            flex-wrap:wrap;
            ">

            <input
                id="newsletterEmail"
                type="email"
                placeholder="Enter your email"
                required>

            <button
                class="btn btn-primary"
                id="subscribeBtn">

                Subscribe

            </button>

        </form>

        <div
            id="newsletterMsg"
            style="
            margin-top:10px;
            display:none;
            ">

        </div>

    </div>

</section>

</main>


<!-- =========================
     FOOTER
========================= -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-title">
                    NexusShop
                </div>

                <p>
                    A modern e-commerce shopping
                    experience designed for everyone.
                </p>

                <div class="socials">

                    <a class="icon-btn" href="#">
                        <i class="fab fa-facebook"></i>
                    </a>

                    <a class="icon-btn" href="#">
                        <i class="fab fa-twitter"></i>
                    </a>

                    <a class="icon-btn" href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                </div>

            </div>


            <div>

                <div class="footer-title">
                    Company
                </div>

                <div class="footer-links">

                    <a href="#about">
                        About
                    </a>

                    <a href="#">
                        Careers
                    </a>

                    <a href="#">
                        Press
                    </a>

                </div>

            </div>


            <div>

                <div class="footer-title">
                    Support
                </div>

                <div class="footer-links">

                    <a href="#">
                        Help Center
                    </a>

                    <a href="#">
                        Shipping & Returns
                    </a>

                    <a href="#">
                        Contact
                    </a>

                </div>

            </div>

        </div>

        <div class="copyright">

            ©
            <span id="year"></span>
            NexusShop.
            All rights reserved.

        </div>

    </div>

</footer>


<script>

/* =========================
   PRODUCT DATA
========================= */

const CATEGORIES = [

    {
        id: "phones",
        name: "Smartphones",
        icon: "fa-mobile-alt"
    },

    {
        id: "laptops",
        name: "Laptops",
        icon: "fa-laptop"
    },

    {
        id: "clothing",
        name: "Clothing",
        icon: "fa-tshirt"
    },

    {
        id: "gadgets",
        name: "Gadgets",
        icon: "fa-headphones"
    },

    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints"
    },

    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-watch"
    }

];


const PRODUCTS = [

    {
        id: 1,
        title: "iPhone 14 Pro Max",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80",
        category: "phones"
    },

    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80",
        category: "laptops"
    },

    {
        id: 3,
        title: "Apple Watch Series 8",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "-25%",
        img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80",
        category: "accessories"
    },

    {
        id: 4,
        title: "Nike Air Max 270",
        price: 150,
        rating: 4,
        reviews: 53,
        img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80",
        category: "footwear"
    },

    {
        id: 5,
        title: "Sony A7 IV Camera",
        price: 2499,
        rating: 5,
        reviews: 42,
        img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80",
        category: "gadgets"
    },

    {
        id: 6,
        title: "Chanel No. 5",
        price: 120,
        rating: 5,
        reviews: 189,
        img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80",
        category: "accessories"
    },

    {
        id: 7,
        title: "Travel Backpack",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80",
        category: "accessories"
    },

    {
        id: 8,
        title: "Sony WH-1000XM5",
        price: 399,
        rating: 5,
        reviews: 156,
        img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80",
        category: "gadgets"
    }

];


/* =========================
   ELEMENTS
========================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const cartCountEl =
    document.getElementById("cartCount");

const searchInput =
    document.getElementById("searchInput");

let cartCount = 0;


/* =========================
   RENDER CATEGORIES
========================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(cat => {

        const el =
            document.createElement("div");

        el.className = "cat-card";

        el.innerHTML = `

            <div class="icon">

                <i class="fas ${cat.icon}"></i>

            </div>

            <h4>
                ${cat.name}
            </h4>

            <div class="muted">
                Explore ${cat.name}
            </div>

        `;

        el.addEventListener("click", () => {

            searchInput.value = cat.name;

            filterProducts(cat.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });

        categoriesGrid.appendChild(el);

    });

}


/* =========================
   RENDER PRODUCTS
========================= */

function renderProducts(list) {

    productsGrid.innerHTML = "";

    list.forEach(p => {

        const el =
            document.createElement("article");

        el.className = "product";

        el.innerHTML = `

            <div class="product-media">

                ${
                    p.badge
                    ?
                    `<span class="product-badge">
                        ${p.badge}
                    </span>`
                    :
                    ""
                }

                <img
                    src="${p.img}"
                    alt="${escapeHtml(p.title)}"
                    loading="lazy">

            </div>


            <div class="product-body">

                <h5>
                    ${escapeHtml(p.title)}
                </h5>

                <div class="product-category">
                    ${escapeHtml(p.category)}
                </div>

                <div class="price-row">

                    <div>

                        <span class="price">
                            $${p.price.toLocaleString()}
                        </span>

                        ${
                            p.oldPrice
                            ?
                            `<span class="old-price">
                                $${p.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>

                    <div class="rating">

                        ${"★".repeat(Math.round(p.rating))}

                        <span style="color:var(--muted)">
                            (${p.reviews})
                        </span>

                    </div>

                </div>

            </div>


            <div class="product-footer">

                <button
                    class="add-btn"
                    data-id="${p.id}">

                    <i class="fas fa-cart-plus"></i>
                    Add to Cart

                </button>

                <button
                    class="wish-btn"
                    aria-label="Add to wishlist">

                    <i class="far fa-heart"></i>

                </button>

            </div>

        `;

        productsGrid.appendChild(el);

    });

}


/* =========================
   ESCAPE HTML
========================= */

function escapeHtml(text) {

    return String(text)
        .replace(/[&<>"']/g, s => ({
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#39;"
        }[s]));

}


/* =========================
   ADD TO CART
========================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(
            p => p.id === productId
        );

    if (!product) return;

    cartCount++;

    cartCountEl.textContent =
        cartCount;

    const btn =
        document.querySelector(
            `.add-btn[data-id="${productId}"]`
        );

    if (btn) {

        const original =
            btn.innerHTML;

        btn.innerHTML =
            '<i class="fas fa-check"></i> Added';

        btn.disabled = true;

        showToast(
            product.title +
            " added to cart"
        );

        setTimeout(() => {

            btn.innerHTML =
                original;

            btn.disabled =
                false;

        }, 1200);

    }

}


/* =========================
   SEARCH
========================= */

function filterProducts(query) {

    const q =
        String(query || "")
            .trim()
            .toLowerCase();

    if (!q) {

        renderProducts(PRODUCTS);

        return;
    }

    const filtered =
        PRODUCTS.filter(product =>

            product.title
                .toLowerCase()
                .includes(q)

            ||

            product.category
                .toLowerCase()
                .includes(q)

        );

    renderProducts(filtered);

    if (filtered.length === 0) {

        showToast(
            "No products found"
        );

    }

}


/* =========================
   TOAST
========================= */

function showToast(message) {

    let toast =
        document.getElementById("toast");

    if (!toast) {

        toast =
            document.createElement("div");

        toast.id = "toast";

        toast.style.cssText = `
            position:fixed;
            left:50%;
            bottom:26px;
            transform:translate(-50%,20px);
            opacity:0;
            z-index:200;
            background:#172033;
            color:white;
            padding:12px 17px;
            border-radius:12px;
            font-size:14px;
            font-weight:700;
            box-shadow:0 12px 30px rgba(0,0,0,.18);
            transition:.25s;
            pointer-events:none;
        `;

        document.body.appendChild(toast);

    }

    toast.textContent =
        message;

    toast.style.opacity =
        "1";

    toast.style.transform =
        "translate(-50%,0)";

    clearTimeout(
        window.__toastTimer
    );

    window.__toastTimer =
        setTimeout(() => {

            toast.style.opacity =
                "0";

            toast.style.transform =
                "translate(-50%,20px)";

        }, 1800);

}


/* =========================
   PRODUCT BUTTON EVENTS
========================= */

productsGrid.addEventListener(
    "click",
    event => {

        const addButton =
            event.target.closest(".add-btn");

        if (addButton) {

            addToCart(
                Number(addButton.dataset.id)
            );

            return;
        }


        const wishButton =
            event.target.closest(".wish-btn");

        if (wishButton) {

            const icon =
                wishButton.querySelector("i");

            const active =
                icon.classList.contains("fas");

            icon.classList.toggle(
                "far",
                active
            );

            icon.classList.toggle(
                "fas",
                !active
            );

            wishButton.style.color =
                active
                ? ""
                : "var(--danger)";

            showToast(
                active
                ? "Removed from wishlist"
                : "Added to wishlist"
            );

        }

    }
);


/* =========================
   SEARCH EVENTS
========================= */

document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        () => {
            filterProducts(
                searchInput.value
            );
        }
    );


searchInput.addEventListener(
    "keydown",
    event => {

        if (event.key === "Enter") {

            filterProducts(
                event.target.value
            );

        }

    }
);


/* =========================
   MOBILE MENU
========================= */

const mobileToggle =
    document.getElementById(
        "mobileToggle"
    );

const mobileMenu =
    document.getElementById(
        "mobileMenu"
    );


mobileToggle.addEventListener(
    "click",
    () => {

        const visible =
            mobileMenu.style.display === "block";

        mobileMenu.style.display =
            visible
            ? "none"
            : "block";

    }
);


/* =========================
   NEWSLETTER
========================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const email =
                document.getElementById(
                    "newsletterEmail"
                ).value.trim();

            const msg =
                document.getElementById(
                    "newsletterMsg"
                );

            if (
                !email ||
                !email.includes("@")
            ) {

                msg.style.display =
                    "block";

                msg.style.color =
                    "#ffb3b3";

                msg.textContent =
                    "Please enter a valid email address.";

                return;
            }

            msg.style.display =
                "block";

            msg.style.color =
                "#a7f3d0";

            msg.textContent =
                "Thanks! You are subscribed.";

            document.getElementById(
                "newsletterEmail"
            ).value = "";

            setTimeout(
                () => {
                    msg.style.display =
                        "none";
                },
                3000
            );

        }
    );


/* =========================
   FLASH SALE TIMER
========================= */

(function setupDealTimer() {

    const now =
        new Date();

    const target =
        new Date(
            now.getTime()
            +
            (24 * 60 + 36)
            * 60
            * 1000
        );

    function tick() {

        const diff =
            target - new Date();

        const days =
            Math.max(
                0,
                Math.floor(
                    diff /
                    (24 * 3600 * 1000)
                )
            );

        const hours =
            Math.max(
                0,
                Math.floor(
                    (
                        diff %
                        (24 * 3600 * 1000)
                    )
                    /
                    (3600 * 1000)
                )
            );

        const minutes =
            Math.max(
                0,
                Math.floor(
                    (
                        diff %
                        (3600 * 1000)
                    )
                    /
                    (60 * 1000)
                )
            );

        const seconds =
            Math.max(
                0,
                Math.floor(
                    (
                        diff %
                        (60 * 1000)
                    )
                    /
                    1000
                )
            );

        document.getElementById(
            "dealDays"
        ).textContent = days;

        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours)
                .padStart(2,"0");

        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes)
                .padStart(2,"0");

        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds)
                .padStart(2,"0");

        if (diff <= 0) {

            clearInterval(timer);

        }

    }

    tick();

    const timer =
        setInterval(
            tick,
            1000
        );

})();


/* =========================
   HERO BUTTONS
========================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


document
    .getElementById("exploreDeals")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }
    );


/* =========================
   DEAL BUTTON
========================= */

document
    .getElementById("buyDeal")
    .addEventListener(
        "click",
        () => {

            cartCount++;

            cartCountEl.textContent =
                cartCount;

            showToast(
                "Flash deal added to cart"
            );

        }
    );


/* =========================
   INITIALIZATION
========================= */

(function init() {

    renderCategories();

    renderProducts(PRODUCTS);

    cartCountEl.textContent =
        cartCount;

    document.getElementById(
        "year"
    ).textContent =
        new Date().getFullYear();

})();

</script>

</body>
</html>
