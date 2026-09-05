```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>PinkCart - Online Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================
   GLOBAL
========================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: 'Poppins', sans-serif;

    background: #fbe8f2;

    color: #3d1028;
}

a {
    text-decoration: none;
    color: inherit;
}

button,
input {
    font-family: inherit;
}


/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;

    z-index: 1000;

    background: #ffffff;

    border-bottom: 1px solid #edbfd4;
}

.navbar {
    max-width: 1250px;

    margin: auto;

    min-height: 75px;

    padding: 0 25px;

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 20px;
}


/* LOGO */

.logo {
    display: flex;

    align-items: center;

    gap: 10px;

    font-size: 24px;

    font-weight: 800;

    color: #8b0a50;
}

.logo-icon {

    width: 42px;
    height: 42px;

    display: grid;

    place-items: center;

    background: #8b0a50;

    color: white;

    border-radius: 13px;
}

.logo span {
    color: #c21870;
}


/* NAVIGATION */

.nav-links {

    display: flex;

    gap: 8px;

    list-style: none;
}

.nav-links a {

    padding: 10px 15px;

    border-radius: 10px;

    color: #64233f;

    font-size: 14px;

    font-weight: 600;

    transition: .2s;
}

.nav-links a:hover {

    background: #f8d8e7;

    color: #8b0a50;
}


/* NAV ACTIONS */

.nav-actions {

    display: flex;

    align-items: center;

    gap: 8px;
}

.search-box {

    width: 220px;

    display: flex;

    align-items: center;

    gap: 8px;

    background: #fff3f8;

    border: 1px solid #edbfd4;

    padding: 9px 12px;

    border-radius: 12px;
}

.search-box i {
    color: #a4135c;
}

.search-box input {

    width: 100%;

    border: none;

    outline: none;

    background: transparent;

    color: #3d1028;
}


.action-btn {

    width: 42px;
    height: 42px;

    border: none;

    border-radius: 11px;

    background: #fff0f7;

    color: #8b0a50;

    display: grid;

    place-items: center;

    cursor: pointer;

    transition: .2s;
}

.action-btn:hover {

    background: #8b0a50;

    color: white;
}


/* CART */

.cart-btn {
    position: relative;
}

.cart-count {

    position: absolute;

    top: -5px;

    right: -5px;

    width: 19px;
    height: 19px;

    display: grid;

    place-items: center;

    background: #c21870;

    color: white;

    border-radius: 50%;

    font-size: 10px;

    font-weight: 700;
}

.menu-btn {
    display: none;
}


/* =========================
   HERO
========================= */

.hero {

    max-width: 1250px;

    margin: 25px auto;

    padding: 70px 60px;

    border-radius: 28px;

    background:

        linear-gradient(
            120deg,
            #650536,
            #8b0a50,
            #c21870
        );

    color: white;

    position: relative;

    overflow: hidden;
}


.hero::after {

    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    right: -100px;

    top: -120px;

    border-radius: 50%;

    background: rgba(255,255,255,.10);
}


.hero-content {

    position: relative;

    z-index: 2;

    max-width: 650px;
}


.hero-label {

    display: inline-block;

    padding: 7px 12px;

    background: rgba(255,255,255,.16);

    border: 1px solid rgba(255,255,255,.25);

    border-radius: 30px;

    font-size: 12px;

    font-weight: 600;

    margin-bottom: 18px;
}


.hero h1 {

    font-size: clamp(36px, 5vw, 60px);

    line-height: 1.05;

    margin-bottom: 18px;
}


.hero p {

    color: #fbd9e9;

    font-size: 16px;

    margin-bottom: 28px;
}


.hero-buttons {

    display: flex;

    gap: 12px;

    flex-wrap: wrap;
}


/* BUTTONS */

.btn {

    border: none;

    border-radius: 11px;

    min-height: 46px;

    padding: 0 20px;

    font-weight: 700;

    cursor: pointer;

    transition: .2s;
}

.btn:hover {
    transform: translateY(-2px);
}


.btn-white {

    background: white;

    color: #8b0a50;
}


.btn-pink {

    background: #8b0a50;

    color: white;
}


.btn-outline {

    background: transparent;

    color: white;

    border: 1px solid rgba(255,255,255,.5);
}


/* =========================
   GENERAL
========================= */

.container {

    max-width: 1250px;

    margin: auto;

    padding: 0 25px;
}

.section {

    padding: 55px 0;
}


.section-heading {

    margin-bottom: 25px;
}


.section-heading h2 {

    font-size: 28px;

    color: #650536;
}


.section-heading p {

    color: #82556b;

    margin-top: 4px;
}


/* =========================
   FEATURES
========================= */

.features {

    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 18px;
}


.feature {

    background: white;

    border: 1px solid #edbfd4;

    border-radius: 16px;

    padding: 22px;

    display: flex;

    align-items: center;

    gap: 15px;
}


.feature-icon {

    width: 48px;
    height: 48px;

    flex-shrink: 0;

    display: grid;

    place-items: center;

    background: #f8d8e7;

    color: #8b0a50;

    border-radius: 13px;
}


.feature h4 {
    font-size: 14px;
}

.feature p {

    font-size: 12px;

    color: #856276;
}


/* =========================
   CATEGORIES
========================= */

.category-grid {

    display: grid;

    grid-template-columns: repeat(6, 1fr);

    gap: 15px;
}


.category-card {

    background: white;

    border: 1px solid #edbfd4;

    border-radius: 18px;

    padding: 22px 10px;

    text-align: center;

    cursor: pointer;

    transition: .25s;
}


.category-card:hover {

    transform: translateY(-6px);

    background: #8b0a50;

    color: white;

    box-shadow: 0 15px 30px rgba(139,10,80,.25);
}


.category-icon {

    width: 55px;
    height: 55px;

    margin: auto auto 12px;

    display: grid;

    place-items: center;

    border-radius: 15px;

    background: #f8d8e7;

    color: #8b0a50;

    font-size: 21px;
}


.category-card:hover .category-icon {

    background: rgba(255,255,255,.18);

    color: white;
}


.category-card h4 {
    font-size: 14px;
}


/* =========================
   PRODUCTS
========================= */

.product-grid {

    display: grid;

    grid-template-columns: repeat(4, 1fr);

    gap: 20px;
}


.product-card {

    background: white;

    border-radius: 18px;

    overflow: hidden;

    border: 1px solid #edbfd4;

    transition: .25s;
}


.product-card:hover {

    transform: translateY(-6px);

    box-shadow: 0 15px 35px rgba(139,10,80,.15);
}


.product-image {

    position: relative;

    background: #fdeaf3;

    overflow: hidden;
}


.product-image img {

    width: 100%;

    height: 235px;

    display: block;

    object-fit: cover;

    transition: .35s;
}


.product-card:hover img {

    transform: scale(1.05);
}


/* PRODUCT BADGE */

.badge {

    position: absolute;

    top: 12px;

    left: 12px;

    background: #8b0a50;

    color: white;

    padding: 5px 9px;

    border-radius: 7px;

    font-size: 10px;

    font-weight: 700;

    z-index: 2;
}


/* HEART */

.heart {

    position: absolute;

    right: 12px;

    top: 12px;

    width: 36px;
    height: 36px;

    border: none;

    border-radius: 50%;

    background: white;

    color: #8b0a50;

    cursor: pointer;

    box-shadow: 0 5px 15px rgba(0,0,0,.08);

    z-index: 3;
}


/* PRODUCT INFO */

.product-info {
    padding: 16px;
}


.product-category {

    color: #b02b70;

    font-size: 11px;

    text-transform: uppercase;

    font-weight: 700;
}


.product-info h3 {

    font-size: 15px;

    margin: 5px 0;
}


.rating {

    color: #c21870;

    font-size: 12px;
}


.rating span {

    color: #806275;
}


/* PRICE */

.price-row {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-top: 14px;
}


.price {

    color: #650536;

    font-size: 19px;

    font-weight: 800;
}


.old-price {

    color: #aa8b9b;

    font-size: 11px;

    text-decoration: line-through;

    margin-left: 5px;
}


/* ADD CART */

.add-cart {

    width: 100%;

    margin-top: 13px;

    border: none;

    min-height: 42px;

    border-radius: 10px;

    background: #8b0a50;

    color: white;

    font-weight: 700;

    cursor: pointer;

    transition: .2s;
}


.add-cart:hover {

    background: #650536;
}


/* =========================
   OFFER
========================= */

.offer {

    background: #8b0a50;

    color: white;

    border-radius: 24px;

    display: grid;

    grid-template-columns: 1fr 1fr;

    overflow: hidden;
}


.offer-image {

    min-height: 360px;

    background:

        linear-gradient(
            rgba(139,10,80,.25),
            rgba(139,10,80,.25)
        ),

        url("https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=80")

        center/cover;
}


.offer-content {

    padding: 45px;

    display: flex;

    justify-content: center;

    flex-direction: column;
}


.offer-tag {

    color: #f5b9d5;

    font-size: 12px;

    font-weight: 700;

    text-transform: uppercase;
}


.offer h2 {

    font-size: 35px;

    margin: 10px 0;
}


.offer p {

    color: #f8d7e7;

    margin-bottom: 20px;
}


.offer-price {

    font-size: 28px;

    font-weight: 800;

    margin-bottom: 20px;
}


/* TIMER */

.timer {

    display: flex;

    gap: 8px;

    margin-bottom: 20px;
}


.timer-box {

    min-width: 65px;

    padding: 9px;

    background: rgba(255,255,255,.12);

    border: 1px solid rgba(255,255,255,.18);

    border-radius: 9px;

    text-align: center;
}


.timer-box strong {

    display: block;

    font-size: 18px;
}


.timer-box small {

    font-size: 9px;

    color: #f3c7da;
}


/* =========================
   NEWSLETTER
========================= */

.newsletter {

    background: #f8d8e7;

    border: 1px solid #e6b4cc;

    border-radius: 22px;

    padding: 45px 25px;

    text-align: center;
}


.newsletter h2 {

    color: #650536;

    margin-bottom: 8px;
}


.newsletter p {

    color: #79556a;

    margin-bottom: 20px;
}


.newsletter-form {

    max-width: 520px;

    margin: auto;

    display: flex;

    gap: 8px;
}


.newsletter-form input {

    flex: 1;

    min-height: 45px;

    border: 1px solid #dcaac2;

    border-radius: 10px;

    padding: 0 14px;

    outline: none;
}


.newsletter-form input:focus {

    border-color: #8b0a50;
}


/* =========================
   FOOTER
========================= */

footer {

    background: #4b0228;

    color: #e9bfd3;

    padding: 50px 0 20px;

    margin-top: 30px;
}


.footer-grid {

    display: grid;

    grid-template-columns: 1.5fr 1fr 1fr 1fr;

    gap: 35px;
}


.footer-brand {

    color: white;

    font-size: 22px;

    font-weight: 800;
}


.footer-brand span {
    color: #e678aa;
}


footer h4 {

    color: white;

    margin-bottom: 12px;
}


footer a {

    display: block;

    color: #e9bfd3;

    font-size: 13px;

    margin-bottom: 8px;
}


footer a:hover {

    color: #f58fba;
}


/* SOCIAL */

.social {

    display: flex;

    gap: 8px;

    margin-top: 15px;
}


.social a {

    width: 35px;
    height: 35px;

    display: grid;

    place-items: center;

    background: #6e0940;

    border-radius: 9px;
}


/* COPYRIGHT */

.copyright {

    text-align: center;

    border-top: 1px solid #721043;

    padding-top: 20px;

    margin-top: 30px;

    font-size: 11px;
}


/* =========================
   TOAST
========================= */

.toast {

    position: fixed;

    left: 50%;

    bottom: 25px;

    transform: translate(-50%, 100px);

    background: #650536;

    color: white;

    padding: 12px 18px;

    border-radius: 10px;

    font-size: 13px;

    font-weight: 600;

    box-shadow: 0 10px 30px rgba(0,0,0,.2);

    opacity: 0;

    transition: .3s;

    z-index: 2000;
}


.toast.show {

    transform: translate(-50%, 0);

    opacity: 1;
}


/* =========================
   RESPONSIVE
========================= */

@media(max-width:1050px) {

    .nav-links {
        display: none;
    }

    .menu-btn {
        display: grid;
    }

    .category-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .product-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2, 1fr);
    }
}


@media(max-width:800px) {

    .hero {

        margin: 15px;

        padding: 50px 30px;
    }

    .navbar {
        padding: 0 15px;
    }

    .search-box {
        width: 170px;
    }

    .product-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .offer {
        grid-template-columns: 1fr;
    }

    .offer-image {
        min-height: 250px;
    }

    .features {
        grid-template-columns: 1fr;
    }
}


@media(max-width:600px) {

    .logo {
        font-size: 20px;
    }

    .logo-icon {

        width: 36px;

        height: 36px;
    }

    .search-box {

        width: 40px;

        padding: 0;

        justify-content: center;

        background: transparent;

        border: none;
    }

    .search-box input {
        display: none;
    }

    .category-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .product-grid {
        grid-template-columns: 1fr;
    }

    .product-image img {
        height: 250px;
    }

    .hero {
        border-radius: 20px;
    }

    .hero h1 {
        font-size: 36px;
    }

    .hero-buttons {
        display: grid;
    }

    .hero-buttons .btn {
        width: 100%;
    }

    .offer-content {
        padding: 30px 22px;
    }

    .offer h2 {
        font-size: 28px;
    }

    .newsletter-form {
        display: grid;
    }

    .newsletter-form button {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>


<body>


<!-- =========================
     HEADER
========================= -->

<header>

<div class="navbar">

<a href="#" class="logo">

<div class="logo-icon">
<i class="fas fa-bag-shopping"></i>
</div>

Pink<span>Cart</span>

</a>


<nav>

<ul class="nav-links">

<li>
<a href="#">Home</a>
</li>

<li>
<a href="#categories">Categories</a>
</li>

<li>
<a href="#products">Products</a>
</li>

<li>
<a href="#offers">Offers</a>
</li>

<li>
<a href="#contact">Contact</a>
</li>

</ul>

</nav>


<div class="nav-actions">


<div class="search-box">

<i class="fas fa-search"></i>

<input
type="text"
id="search"
placeholder="Search products...">

</div>


<button class="action-btn">

<i class="far fa-user"></i>

</button>


<button class="action-btn">

<i class="far fa-heart"></i>

</button>


<button
class="action-btn cart-btn"
id="cartButton">

<i class="fas fa-shopping-bag"></i>

<span
class="cart-count"
id="cartCount">
0
</span>

</button>


<button
class="action-btn menu-btn"
id="menuButton">

<i class="fas fa-bars"></i>

</button>

</div>

</div>

</header>



<!-- =========================
     HERO
========================= -->

<section class="hero">

<div class="hero-content">

<span class="hero-label">
💗 Special Shopping Deals
</span>


<h1>

Shop More.
<br>

Save More.

</h1>


<p>

Discover amazing products at affordable prices.
Everything you need, all in one place.

</p>


<div class="hero-buttons">

<button
class="btn btn-white"
onclick="scrollToProducts()">

Shop Now

<i class="fas fa-arrow-right"></i>

</button>


<button
class="btn btn-outline"
onclick="scrollToOffers()">

View Offers

</button>

</div>

</div>

</section>



<!-- =========================
     FEATURES
========================= -->

<section class="section">

<div class="container">

<div class="features">


<div class="feature">

<div class="feature-icon">

<i class="fas fa-truck"></i>

</div>

<div>

<h4>
Fast Delivery
</h4>

<p>
Quick and reliable shipping
</p>

</div>

</div>


<div class="feature">

<div class="feature-icon">

<i class="fas fa-shield-alt"></i>

</div>

<div>

<h4>
Secure Payment
</h4>

<p>
Your payment is protected
</p>

</div>

</div>


<div class="feature">

<div class="feature-icon">

<i class="fas fa-headset"></i>

</div>

<div>

<h4>
24/7 Support
</h4>

<p>
We are always here to help
</p>

</div>

</div>


</div>

</div>

</section>



<!-- =========================
     CATEGORIES
========================= -->

<section
class="section"
id="categories">

<div class="container">

<div class="section-heading">

<h2>
Explore Categories
</h2>

<p>
Find everything you need from our popular categories.
</p>

</div>


<div
class="category-grid"
id="categoryGrid">

</div>

</div>

</section>



<!-- =========================
     PRODUCTS
========================= -->

<section
class="section"
id="products">

<div class="container">

<div class="section-heading">

<h2>
Popular Products
</h2>

<p>
Hand-picked products our customers love.
</p>

</div>


<div
class="product-grid"
id="productGrid">

</div>

</div>

</section>



<!-- =========================
     OFFER
========================= -->

<section
class="section"
id="offers">

<div class="container">

<div class="offer">


<div class="offer-image">
</div>


<div class="offer-content">


<div class="offer-tag">

⚡ Limited Time Offer

</div>


<h2>

Big Savings
on Laptops

</h2>


<p>

Upgrade your workspace with powerful
laptops at special prices.

</p>


<div class="offer-price">

From $699

</div>


<div class="timer">


<div class="timer-box">

<strong id="days">
02
</strong>

<small>
DAYS
</small>

</div>


<div class="timer-box">

<strong id="hours">
12
</strong>

<small>
HOURS
</small>

</div>


<div class="timer-box">

<strong id="minutes">
35
</strong>

<small>
MINUTES
</small>

</div>


<div class="timer-box">

<strong id="seconds">
48
</strong>

<small>
SECONDS
</small>

</div>

</div>


<button
class="btn btn-white"
onclick="addOfferToCart()">

Grab This Deal

<i class="fas fa-arrow-right"></i>

</button>

</div>

</div>

</div>

</section>



<!-- =========================
     NEWSLETTER
========================= -->

<section class="section">

<div class="container">

<div class="newsletter">


<h2>

Get Exclusive Deals 💗

</h2>


<p>

Subscribe to our newsletter and receive
the latest offers directly in your inbox.

</p>


<form
class="newsletter-form"
id="newsletterForm">


<input
type="email"
id="email"
placeholder="Enter your email"
required>


<button
type="submit"
class="btn btn-pink">

Subscribe

</button>

</form>

</div>

</div>

</section>



<!-- =========================
     FOOTER
========================= -->

<footer id="contact">

<div class="container">

<div class="footer-grid">


<div>

<div class="footer-brand">

Pink<span>Cart</span>

</div>


<p style="margin-top:10px;font-size:13px;">

Your simple and trusted
online shopping destination.

</p>


<div class="social">


<a href="#">
<i class="fab fa-facebook"></i>
</a>


<a href="#">
<i class="fab fa-instagram"></i>
</a>


<a href="#">
<i class="fab fa-twitter"></i>
</a>


<a href="#">
<i class="fab fa-youtube"></i>
</a>

</div>

</div>


<div>

<h4>
Shop
</h4>

<a href="#products">
All Products
</a>

<a href="#categories">
Categories
</a>

<a href="#offers">
Deals
</a>

</div>


<div>

<h4>
Help
</h4>

<a href="#">
Customer Support
</a>

<a href="#">
Shipping
</a>

<a href="#">
Returns
</a>

</div>


<div>

<h4>
Company
</h4>

<a href="#">
About Us
</a>

<a href="#">
Privacy Policy
</a>

<a href="#">
Terms & Conditions
</a>

</div>

</div>


<div class="copyright">

© 2026 PinkCart.
All rights reserved.

</div>

</div>

</footer>



<!-- TOAST -->

<div
class="toast"
id="toast">

Product added to cart!

</div>



<script>


/* =========================
   CATEGORY DATA
========================= */

const categories = [

{
name: "Mobiles",
icon: "fa-mobile-screen-button"
},

{
name: "Laptops",
icon: "fa-laptop"
},

{
name: "Fashion",
icon: "fa-shirt"
},

{
name: "Headphones",
icon: "fa-headphones"
},

{
name: "Shoes",
icon: "fa-shoe-prints"
},

{
name: "Accessories",
icon: "fa-watch"
}

];



/* =========================
   PRODUCT DATA
========================= */

const products = [

{
name: "iPhone 15 Pro",
category: "Mobiles",
price: 999,
oldPrice: 1099,
rating: 5,
image:
"https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80"
},

{
name: "MacBook Air M2",
category: "Laptops",
price: 999,
oldPrice: 1199,
rating: 5,
image:
"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
},

{
name: "Smart Watch",
category: "Accessories",
price: 149,
oldPrice: 199,
rating: 4,
image:
"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
},

{
name: "Wireless Headphones",
category: "Headphones",
price: 129,
oldPrice: 179,
rating: 5,
image:
"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
},

{
name: "Running Shoes",
category: "Shoes",
price: 89,
oldPrice: 120,
rating: 4,
image:
"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
},

{
name: "Premium Backpack",
category: "Accessories",
price: 69,
oldPrice: 99,
rating: 4,
image:
"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
},

{
name: "Classic T-Shirt",
category: "Fashion",
price: 29,
oldPrice: 45,
rating: 5,
image:
"https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80"
},

{
name: "Android Smartphone",
category: "Mobiles",
price: 499,
oldPrice: 599,
rating: 4,
image:
"https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80"
}

];



/* =========================
   CATEGORY DISPLAY
========================= */

const categoryGrid =
document.getElementById("categoryGrid");


categories.forEach(category => {

const card =
document.createElement("div");

card.className =
"category-card";

card.innerHTML = `

<div class="category-icon">

<i class="fas ${category.icon}"></i>

</div>

<h4>
${category.name}
</h4>

`;


card.onclick = () => {

document.getElementById(
"search"
).value = category.name;

filterProducts(category.name);

scrollToProducts();

};


categoryGrid.appendChild(card);

});



/* =========================
   PRODUCT DISPLAY
========================= */

const productGrid =
document.getElementById("productGrid");


function renderProducts(list) {

productGrid.innerHTML = "";


if(list.length === 0) {

productGrid.innerHTML = `

<div style="
grid-column:1/-1;
text-align:center;
padding:50px;
background:white;
border-radius:18px;
color:#79556a;
">

<i
class="fas fa-search"
style="
font-size:30px;
color:#8b0a50;
margin-bottom:12px;
">
</i>

<h3>
No products found
</h3>

<p>
Try searching for another product.
</p>

</div>

`;

return;

}


list.forEach((product,index) => {

const card =
document.createElement("div");

card.className =
"product-card";


card.innerHTML = `

<div class="product-image">


${
index < 3

?

`<span class="badge">
Popular
</span>`

:

""
}


<button
class="heart"
onclick="toggleWishlist(this)">

<i class="far fa-heart"></i>

</button>


<img
src="${product.image}"
alt="${product.name}">

</div>


<div class="product-info">


<div class="product-category">

${product.category}

</div>


<h3>

${product.name}

</h3>


<div class="rating">

${"★".repeat(product.rating)}

<span>
(${Math.floor(Math.random()*150+30)})
</span>

</div>


<div class="price-row">

<div>

<span class="price">

$${product.price}

</span>


<span class="old-price">

$${product.oldPrice}

</span>

</div>

</div>


<button
class="add-cart"
onclick="addToCart('${product.name}')">

<i class="fas fa-cart-plus"></i>

Add to Cart

</button>


</div>

`;


productGrid.appendChild(card);

});

}


renderProducts(products);



/* =========================
   SEARCH
========================= */

const search =
document.getElementById("search");


search.addEventListener(
"input",
function() {

filterProducts(this.value);

});


function filterProducts(value) {

const query =
value.trim().toLowerCase();


if(!query) {

renderProducts(products);

return;

}


const filtered =
products.filter(product =>

product.name
.toLowerCase()
.includes(query)

||

product.category
.toLowerCase()
.includes(query)

);


renderProducts(filtered);

}



/* =========================
   CART
========================= */

let cartCount = 0;


function addToCart(productName) {

cartCount++;


document.getElementById(
"cartCount"
).textContent = cartCount;


showToast(
productName +
" added to cart!"
);

}


function addOfferToCart() {

cartCount++;


document.getElementById(
"cartCount"
).textContent = cartCount;


showToast(
"Laptop deal added to cart!"
);

}



/* =========================
   WISHLIST
========================= */

function toggleWishlist(button) {

const icon =
button.querySelector("i");


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


if(!active) {

showToast(
"Added to wishlist!"
);

}

else {

showToast(
"Removed from wishlist!"
);

}

}



/* =========================
   TOAST
========================= */

function showToast(message) {

const toast =
document.getElementById("toast");


toast.textContent =
message;


toast.classList.add("show");


clearTimeout(
window.toastTimer
);


window.toastTimer =
setTimeout(() => {

toast.classList.remove(
"show"
);

},2000);

}



/* =========================
   SCROLL
========================= */

function scrollToProducts() {

document.getElementById(
"products"
).scrollIntoView({

behavior:"smooth"

});

}


function scrollToOffers() {

document.getElementById(
"offers"
).scrollIntoView({

behavior:"smooth"

});

}



/* =========================
   NEWSLETTER
========================= */

document.getElementById(
"newsletterForm"
).addEventListener(
"submit",
function(event) {

event.preventDefault();


showToast(
"Thank you! You are subscribed."
);


this.reset();

});



/* =========================
   COUNTDOWN
========================= */

let endTime =

new Date().getTime()

+

(

2 * 24 * 60 * 60

+

12 * 60 * 60

+

35 * 60

+

48

) * 1000;


function updateTimer() {

const now =
new Date().getTime();


const distance =
endTime - now;


if(distance <= 0)
return;


const days =
Math.floor(

distance /
(1000*60*60*24)

);


const hours =
Math.floor(

(
distance %
(1000*60*60*24)
)
/
(1000*60*60)

);


const minutes =
Math.floor(

(
distance %
(1000*60*60)
)
/
(1000*60)

);


const seconds =
Math.floor(

(
distance %
(1000*60)
)
/
1000

);


document.getElementById(
"days"
).textContent =
String(days).padStart(2,"0");


document.getElementById(
"hours"
).textContent =
String(hours).padStart(2,"0");


document.getElementById(
"minutes"
).textContent =
String(minutes).padStart(2,"0");


document.getElementById(
"seconds"
).textContent =
String(seconds).padStart(2,"0");

}


setInterval(
updateTimer,
1000
);

updateTimer();



/* =========================
   MOBILE MENU
========================= */

document.getElementById(
"menuButton"
).addEventListener(
"click",
() => {

const nav =
document.querySelector(
".nav-links"
);


if(nav.style.display === "flex") {

nav.style.display = "none";

}

else {

nav.style.display = "flex";

nav.style.position = "absolute";

nav.style.top = "75px";

nav.style.left = "0";

nav.style.right = "0";

nav.style.padding = "15px";

nav.style.background = "white";

nav.style.flexDirection = "column";

nav.style.boxShadow =
"0 10px 20px rgba(0,0,0,.08)";

}

});

</script>

</body>
</html>
```
