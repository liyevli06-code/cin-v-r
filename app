<!DOCTYPE html>
<html lang="az">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Şəfa Market — Təzə və Keyfiyyətli Məhsullar</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700;900&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
  :root {
    --green: #1a5c3a;
    --green-light: #2d8a58;
    --green-pale: #e8f5ee;
    --gold: #c9973a;
    --gold-light: #f5e4c0;
    --cream: #fdf8f0;
    --dark: #1a1a1a;
    --gray: #6b7280;
    --white: #ffffff;
    --shadow: 0 8px 32px rgba(26,92,58,0.12);
    --radius: 16px;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }

  body {
    font-family: 'DM Sans', sans-serif;
    background: var(--cream);
    color: var(--dark);
    overflow-x: hidden;
  }

  /* ============ HEADER ============ */
  header {
    position: sticky; top: 0; z-index: 100;
    background: var(--white);
    border-bottom: 1px solid #e8e8e8;
    box-shadow: 0 2px 20px rgba(0,0,0,0.06);
  }

  .header-inner {
    max-width: 1200px;
    margin: 0 auto;
    padding: 16px 24px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 24px;
  }

  .logo {
    display: flex; align-items: center; gap: 12px;
    text-decoration: none;
  }

  .logo-icon {
    width: 48px; height: 48px;
    background: var(--green);
    border-radius: 12px;
    display: flex; align-items: center; justify-content: center;
    font-size: 22px;
  }

  .logo-text .brand {
    font-family: 'Playfair Display', serif;
    font-size: 22px; font-weight: 700;
    color: var(--green);
    line-height: 1;
  }

  .logo-text .tagline {
    font-size: 11px; color: var(--gray);
    letter-spacing: 0.08em; text-transform: uppercase;
    font-weight: 500;
  }

  nav { display: flex; align-items: center; gap: 32px; }

  nav a {
    font-size: 14px; font-weight: 500;
    color: var(--dark); text-decoration: none;
    transition: color 0.2s;
  }

  nav a:hover { color: var(--green); }

  .header-actions { display: flex; align-items: center; gap: 12px; }

  .btn-admin {
    background: var(--green);
    color: var(--white);
    border: none;
    padding: 10px 20px;
    border-radius: 10px;
    font-size: 13px; font-weight: 600;
    cursor: pointer;
    transition: background 0.2s, transform 0.1s;
    font-family: 'DM Sans', sans-serif;
  }

  .btn-admin:hover { background: var(--green-light); transform: translateY(-1px); }

  /* ============ HERO ============ */
  .hero {
    background: linear-gradient(135deg, var(--green) 0%, #0d3d24 100%);
    color: var(--white);
    padding: 80px 24px;
    position: relative;
    overflow: hidden;
  }

  .hero::before {
    content: '';
    position: absolute; inset: 0;
    background-image: radial-gradient(circle at 70% 50%, rgba(201,151,58,0.15) 0%, transparent 60%),
                      radial-gradient(circle at 20% 80%, rgba(255,255,255,0.05) 0%, transparent 40%);
  }

  .hero-inner {
    max-width: 1200px; margin: 0 auto;
    position: relative;
    display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center;
  }

  .hero-badge {
    display: inline-flex; align-items: center; gap: 8px;
    background: rgba(201,151,58,0.2);
    border: 1px solid rgba(201,151,58,0.4);
    color: #f5cc7f;
    padding: 6px 14px; border-radius: 20px;
    font-size: 12px; font-weight: 600; letter-spacing: 0.06em;
    margin-bottom: 20px;
  }

  .hero h1 {
    font-family: 'Playfair Display', serif;
    font-size: 54px; font-weight: 900;
    line-height: 1.1;
    margin-bottom: 20px;
  }

  .hero h1 span { color: var(--gold); }

  .hero p {
    font-size: 17px; opacity: 0.85; line-height: 1.7;
    margin-bottom: 32px;
    max-width: 460px;
  }

  .hero-btns { display: flex; gap: 12px; flex-wrap: wrap; }

  .btn-primary {
    background: var(--gold);
    color: var(--dark);
    padding: 14px 28px;
    border-radius: 12px;
    border: none;
    font-size: 15px; font-weight: 700;
    cursor: pointer;
    transition: transform 0.2s, box-shadow 0.2s;
    font-family: 'DM Sans', sans-serif;
    text-decoration: none;
    display: inline-block;
  }

  .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 24px rgba(201,151,58,0.4);
  }

  .btn-outline {
    background: transparent;
    color: var(--white);
    padding: 14px 28px;
    border-radius: 12px;
    border: 1.5px solid rgba(255,255,255,0.4);
    font-size: 15px; font-weight: 600;
    cursor: pointer;
    transition: background 0.2s;
    font-family: 'DM Sans', sans-serif;
    text-decoration: none;
    display: inline-block;
  }

  .btn-outline:hover { background: rgba(255,255,255,0.1); }

  .hero-visual {
    display: flex; justify-content: center;
  }

  .hero-card {
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.2);
    border-radius: 24px;
    padding: 32px;
    width: 100%; max-width: 340px;
  }

  .hero-card h3 {
    font-size: 14px; font-weight: 600; opacity: 0.7;
    text-transform: uppercase; letter-spacing: 0.08em;
    margin-bottom: 16px;
  }

  .stat-row {
    display: flex; flex-direction: column; gap: 12px;
  }

  .stat-item {
    background: rgba(255,255,255,0.08);
    border-radius: 12px;
    padding: 14px 18px;
    display: flex; align-items: center; justify-content: space-between;
  }

  .stat-label { font-size: 13px; opacity: 0.75; }
  .stat-val { font-size: 20px; font-weight: 700; color: var(--gold); }

  /* ============ FEATURES ============ */
  .section { padding: 80px 24px; }

  .section-inner { max-width: 1200px; margin: 0 auto; }

  .section-header { text-align: center; margin-bottom: 48px; }

  .section-tag {
    display: inline-block;
    background: var(--green-pale);
    color: var(--green);
    padding: 5px 14px; border-radius: 20px;
    font-size: 12px; font-weight: 700;
    letter-spacing: 0.08em; text-transform: uppercase;
    margin-bottom: 14px;
  }

  .section-header h2 {
    font-family: 'Playfair Display', serif;
    font-size: 40px; font-weight: 800;
    line-height: 1.2;
  }

  .section-header p { color: var(--gray); font-size: 17px; margin-top: 12px; }

  .features-grid {
    display: grid; grid-template-columns: repeat(3, 1fr); gap: 24px;
  }

  .feature-card {
    background: var(--white);
    border: 1px solid #ebebeb;
    border-radius: var(--radius);
    padding: 32px 28px;
    transition: transform 0.2s, box-shadow 0.2s;
  }

  .feature-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow);
  }

  .feature-icon {
    width: 52px; height: 52px;
    background: var(--green-pale);
    border-radius: 14px;
    display: flex; align-items: center; justify-content: center;
    font-size: 24px;
    margin-bottom: 18px;
  }

  .feature-card h3 {
    font-size: 18px; font-weight: 700; margin-bottom: 10px;
  }

  .feature-card p { color: var(--gray); line-height: 1.6; font-size: 15px; }

  /* ============ PRODUCTS ============ */
  .products-section { background: var(--green-pale); }

  .products-grid {
    display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px;
  }

  .product-card {
    background: var(--white);
    border-radius: var(--radius);
    overflow: hidden;
    border: 1px solid #ebebeb;
    transition: transform 0.2s, box-shadow 0.2s;
  }

  .product-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow);
  }

  .product-img {
    height: 160px;
    display: flex; align-items: center; justify-content: center;
    font-size: 60px;
    background: var(--cream);
  }

  .product-info { padding: 18px; }

  .product-cat {
    font-size: 11px; color: var(--green); font-weight: 700;
    text-transform: uppercase; letter-spacing: 0.06em;
  }

  .product-name {
    font-size: 16px; font-weight: 600; margin: 4px 0 8px;
  }

  .product-price {
    font-size: 20px; font-weight: 800; color: var(--green);
  }

  .product-price span { font-size: 13px; font-weight: 400; color: var(--gray); }

  /* ============ MAP / CONTACT ============ */
  .contact-section { background: var(--white); }

  .contact-grid {
    display: grid; grid-template-columns: 1fr 1fr; gap: 48px; align-items: start;
  }

  .contact-info h2 {
    font-family: 'Playfair Display', serif;
    font-size: 38px; font-weight: 800; margin-bottom: 16px;
  }

  .contact-info p { color: var(--gray); font-size: 16px; line-height: 1.7; margin-bottom: 32px; }

  .contact-cards { display: flex; flex-direction: column; gap: 16px; }

  .contact-item {
    display: flex; align-items: flex-start; gap: 16px;
    background: var(--cream);
    border-radius: 14px;
    padding: 18px 20px;
    border: 1px solid #e8e8e8;
  }

  .contact-icon-wrap {
    width: 44px; height: 44px;
    background: var(--green);
    border-radius: 12px;
    display: flex; align-items: center; justify-content: center;
    font-size: 20px;
    flex-shrink: 0;
  }

  .contact-item-label { font-size: 12px; color: var(--gray); font-weight: 500; text-transform: uppercase; letter-spacing: 0.06em; }
  .contact-item-val { font-size: 16px; font-weight: 700; margin-top: 2px; color: var(--dark); }

  .map-embed {
    border-radius: 20px;
    overflow: hidden;
    border: 1px solid #e0e0e0;
    box-shadow: var(--shadow);
  }

  .map-embed iframe { width: 100%; height: 380px; border: none; display: block; }

  /* ============ HOURS ============ */
  .hours-section {
    background: linear-gradient(135deg, var(--green) 0%, #0d3d24 100%);
    color: var(--white);
    text-align: center;
  }

  .hours-section h2 {
    font-family: 'Playfair Display', serif;
    font-size: 36px; margin-bottom: 40px;
  }

  .hours-grid { display: grid; grid-template-columns: repeat(7, 1fr); gap: 12px; }

  .day-card {
    background: rgba(255,255,255,0.1);
    border: 1px solid rgba(255,255,255,0.15);
    border-radius: 14px;
    padding: 20px 10px;
  }

  .day-card.today {
    background: var(--gold);
    border-color: var(--gold);
  }

  .day-name { font-size: 12px; font-weight: 700; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.06em; }
  .day-card.today .day-name { opacity: 1; color: var(--dark); }
  .day-hours { font-size: 15px; font-weight: 700; margin-top: 8px; }
  .day-card.today .day-hours { color: var(--dark); }

  /* ============ FOOTER ============ */
  footer {
    background: var(--dark);
    color: rgba(255,255,255,0.7);
    padding: 48px 24px 24px;
  }

  .footer-inner {
    max-width: 1200px; margin: 0 auto;
    display: grid; grid-template-columns: 2fr 1fr 1fr; gap: 48px;
    margin-bottom: 40px;
  }

  .footer-brand .brand-name {
    font-family: 'Playfair Display', serif;
    font-size: 24px; color: var(--white); font-weight: 700;
    margin-bottom: 12px;
  }

  .footer-brand p { font-size: 14px; line-height: 1.7; }

  .footer-col h4 {
    color: var(--white); font-size: 14px; font-weight: 700;
    text-transform: uppercase; letter-spacing: 0.08em;
    margin-bottom: 16px;
  }

  .footer-col ul { list-style: none; }
  .footer-col ul li { margin-bottom: 10px; }
  .footer-col ul li a {
    color: rgba(255,255,255,0.6); text-decoration: none;
    font-size: 14px; transition: color 0.2s;
  }
  .footer-col ul li a:hover { color: var(--gold); }

  .footer-bottom {
    max-width: 1200px; margin: 0 auto;
    border-top: 1px solid rgba(255,255,255,0.1);
    padding-top: 24px;
    display: flex; justify-content: space-between; align-items: center;
    font-size: 13px;
  }

  /* ============ ADMIN PANEL ============ */
  .admin-overlay {
    display: none;
    position: fixed; inset: 0;
    background: rgba(0,0,0,0.7);
    z-index: 1000;
    align-items: center; justify-content: center;
    padding: 20px;
  }

  .admin-overlay.active { display: flex; }

  .admin-modal {
    background: var(--white);
    border-radius: 24px;
    padding: 40px;
    width: 100%; max-width: 480px;
    position: relative;
    animation: slideUp 0.3s ease;
  }

  @keyframes slideUp {
    from { opacity: 0; transform: translateY(20px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .modal-close {
    position: absolute; top: 16px; right: 16px;
    background: none; border: none;
    font-size: 22px; cursor: pointer; color: var(--gray);
    width: 36px; height: 36px;
    border-radius: 50%; display: flex; align-items: center; justify-content: center;
    transition: background 0.2s;
  }
  .modal-close:hover { background: var(--cream); }

  .admin-modal h2 {
    font-family: 'Playfair Display', serif;
    font-size: 28px; font-weight: 800; margin-bottom: 8px;
  }

  .admin-modal .sub { color: var(--gray); font-size: 15px; margin-bottom: 28px; }

  .form-group { margin-bottom: 18px; }

  .form-group label {
    display: block; font-size: 13px; font-weight: 600;
    margin-bottom: 7px; color: var(--dark);
    text-transform: uppercase; letter-spacing: 0.05em;
  }

  .form-group input {
    width: 100%;
    padding: 13px 16px;
    border: 1.5px solid #e0e0e0;
    border-radius: 10px;
    font-size: 15px;
    font-family: 'DM Sans', sans-serif;
    transition: border-color 0.2s;
    outline: none;
  }

  .form-group input:focus { border-color: var(--green); }

  .btn-login {
    width: 100%;
    background: var(--green);
    color: var(--white);
    border: none; border-radius: 12px;
    padding: 15px;
    font-size: 16px; font-weight: 700;
    cursor: pointer;
    font-family: 'DM Sans', sans-serif;
    transition: background 0.2s, transform 0.1s;
    margin-top: 4px;
  }

  .btn-login:hover { background: var(--green-light); transform: translateY(-1px); }

  .login-error {
    background: #fef2f2; color: #dc2626;
    border: 1px solid #fecaca;
    border-radius: 10px; padding: 12px 16px;
    font-size: 14px; font-weight: 500;
    margin-top: 14px;
    display: none;
  }

  /* ADMIN DASHBOARD */
  .admin-dashboard {
    display: none;
    position: fixed; inset: 0;
    background: #f4f6f8;
    z-index: 1000;
    overflow-y: auto;
  }

  .admin-dashboard.active { display: block; }

  .dash-header {
    background: var(--white);
    border-bottom: 1px solid #e8e8e8;
    padding: 16px 32px;
    display: flex; align-items: center; justify-content: space-between;
  }

  .dash-header .dash-logo {
    font-family: 'Playfair Display', serif;
    font-size: 20px; font-weight: 800; color: var(--green);
  }

  .dash-body {
    max-width: 1100px; margin: 0 auto;
    padding: 40px 24px;
  }

  .dash-greeting {
    font-size: 28px; font-weight: 800; margin-bottom: 32px;
  }

  .dash-stats {
    display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px;
    margin-bottom: 40px;
  }

  .dash-stat {
    background: var(--white);
    border: 1px solid #ebebeb;
    border-radius: 16px;
    padding: 24px;
  }

  .dash-stat-label { font-size: 12px; color: var(--gray); font-weight: 600; text-transform: uppercase; letter-spacing: 0.06em; }
  .dash-stat-val { font-size: 32px; font-weight: 800; margin-top: 8px; color: var(--dark); }
  .dash-stat-change { font-size: 13px; color: var(--green); font-weight: 600; margin-top: 4px; }

  .dash-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 24px; }

  .dash-card {
    background: var(--white);
    border-radius: 16px;
    border: 1px solid #ebebeb;
    padding: 28px;
  }

  .dash-card h3 { font-size: 16px; font-weight: 700; margin-bottom: 20px; color: var(--dark); }

  .product-row {
    display: flex; align-items: center; justify-content: space-between;
    padding: 12px 0;
    border-bottom: 1px solid #f0f0f0;
  }

  .product-row:last-child { border-bottom: none; }

  .product-row .p-name { font-size: 14px; font-weight: 600; }
  .product-row .p-cat { font-size: 12px; color: var(--gray); }
  .product-row .p-price { font-size: 15px; font-weight: 700; color: var(--green); }

  .btn-add-product {
    width: 100%; margin-top: 16px;
    background: var(--green-pale); color: var(--green);
    border: 2px dashed var(--green-light);
    border-radius: 10px; padding: 12px;
    font-size: 14px; font-weight: 700;
    cursor: pointer; font-family: 'DM Sans', sans-serif;
    transition: background 0.2s;
  }

  .btn-add-product:hover { background: #d0eadb; }

  .notice-row {
    display: flex; align-items: flex-start; gap: 12px;
    padding: 12px 0; border-bottom: 1px solid #f0f0f0;
  }

  .notice-row:last-child { border-bottom: none; }

  .notice-dot {
    width: 8px; height: 8px;
    background: var(--green);
    border-radius: 50%; margin-top: 5px; flex-shrink: 0;
  }

  .notice-text { font-size: 14px; line-height: 1.5; }
  .notice-time { font-size: 12px; color: var(--gray); }

  .btn-logout {
    background: none; border: 1.5px solid #e0e0e0;
    border-radius: 10px; padding: 9px 18px;
    font-size: 13px; font-weight: 600; color: var(--gray);
    cursor: pointer; font-family: 'DM Sans', sans-serif;
    transition: border-color 0.2s, color 0.2s;
  }

  .btn-logout:hover { border-color: #c00; color: #c00; }

  /* ============ RESPONSIVE ============ */
  @media (max-width: 900px) {
    .hero-inner { grid-template-columns: 1fr; }
    .hero-visual { display: none; }
    .features-grid { grid-template-columns: 1fr 1fr; }
    .products-grid { grid-template-columns: 1fr 1fr; }
    .contact-grid { grid-template-columns: 1fr; }
    .hours-grid { grid-template-columns: repeat(4, 1fr); }
    .footer-inner { grid-template-columns: 1fr; gap: 24px; }
    .dash-stats { grid-template-columns: 1fr 1fr; }
    .dash-grid { grid-template-columns: 1fr; }
    nav { display: none; }
  }

  @media (max-width: 600px) {
    .hero h1 { font-size: 36px; }
    .features-grid { grid-template-columns: 1fr; }
    .products-grid { grid-template-columns: 1fr 1fr; }
    .hours-grid { grid-template-columns: repeat(4, 1fr); }
    .dash-stats { grid-template-columns: 1fr 1fr; }
  }
</style>
</head>
<body>

<!-- ============ HEADER ============ -->
<header>
  <div class="header-inner">
    <a class="logo" href="#">
      <div class="logo-icon">🌿</div>
      <div class="logo-text">
        <div class="brand">Şəfa Market</div>
        <div class="tagline">Təzə · Keyfiyyətli · Sərfəli</div>
      </div>
    </a>
    <nav>
      <a href="#products">Məhsullar</a>
      <a href="#about">Haqqımızda</a>
      <a href="#contact">Əlaqə</a>
      <a href="#hours">İş saatları</a>
    </nav>
    <div class="header-actions">
      <button class="btn-admin" onclick="openAdmin()">🔐 Admin</button>
    </div>
  </div>
</header>

<!-- ============ HERO ============ -->
<section class="hero">
  <div class="hero-inner">
    <div class="hero-content">
      <div class="hero-badge">⭐ Bakının ən güvenilir marketi</div>
      <h1>Hər gün <span>Təzə</span>,<br>Hər zaman <span>Keyfiyyətli</span></h1>
      <p>Şəfa Market — ailənizdə hər gün lazım olan məhsulları ən yüksək keyfiyyətdə, ən sərfəli qiymətlərlə təqdim edirik.</p>
      <div class="hero-btns">
        <a href="#products" class="btn-primary">🛒 Məhsullara bax</a>
        <a href="#contact" class="btn-outline">📍 Ünvanımız</a>
      </div>
    </div>
    <div class="hero-visual">
      <div class="hero-card">
        <h3>Marketimiz haqqında</h3>
        <div class="stat-row">
          <div class="stat-item">
            <span class="stat-label">🛍️ Məhsul çeşidi</span>
            <span class="stat-val">2000+</span>
          </div>
          <div class="stat-item">
            <span class="stat-label">⭐ Müştəri reytinqi</span>
            <span class="stat-val">4.9/5</span>
          </div>
          <div class="stat-item">
            <span class="stat-label">👥 Daimi müştəri</span>
            <span class="stat-val">5000+</span>
          </div>
          <div class="stat-item">
            <span class="stat-label">🗓️ İldir xidmətdəyik</span>
            <span class="stat-val">8 il</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ============ FEATURES ============ -->
<section class="section" id="about">
  <div class="section-inner">
    <div class="section-header">
      <div class="section-tag">Niyə Şəfa Market?</div>
      <h2>Fərqimiz hiss edilir</h2>
      <p>Keyfiyyətimizdə heç bir güzəşt etmirik</p>
    </div>
    <div class="features-grid">
      <div class="feature-card">
        <div class="feature-icon">🌱</div>
        <h3>Təzə Məhsullar</h3>
        <p>Hər gün yeni gələn meyvə-tərəvəz, süd məhsulları və çörək. Saxlancı yox — birbaşa fermerlərdən.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">💰</div>
        <h3>Sərfəli Qiymətlər</h3>
        <p>Bazardakı ən yaxşı qiymətlər. Daimi müştərilərimiz üçün xüsusi endirim kartları mövcuddur.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">🤝</div>
        <h3>Mehriban Xidmət</h3>
        <p>Peşəkar və mehriban komandamız hər zaman kömək etməyə hazırdır. Müştəri məmnuniyyəti bizim prioritetimizdir.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">🔒</div>
        <h3>Keyfiyyət Zəmanəti</h3>
        <p>Bütün məhsullar keyfiyyət standartlarına uyğundur. Məmnun olmasanız, pul geri qaytarılır.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">📦</div>
        <h3>Geniş Çeşid</h3>
        <p>2000-dən artıq məhsul çeşidi ilə ailənizin bütün ehtiyaclarını bir yerdə qarşılayın.</p>
      </div>
      <div class="feature-card">
        <div class="feature-icon">⏰</div>
        <h3>Rahat İş Saatları</h3>
        <p>Həftənin 7 günü, saat 08:00–22:00 arası xidmətinizdəyik. Bayram günlərində də açıqıq.</p>
      </div>
    </div>
  </div>
</section>

<!-- ============ PRODUCTS ============ -->
<section class="section products-section" id="products">
  <div class="section-inner">
    <div class="section-header">
      <div class="section-tag">Məhsullarımız</div>
      <h2>Ən çox satılanlar</h2>
      <p>Müştərilərimizin ən çox seçdiyi məhsullar</p>
    </div>
    <div class="products-grid">
      <div class="product-card">
        <div class="product-img">🍎</div>
        <div class="product-info">
          <div class="product-cat">Meyvə</div>
          <div class="product-name">Alma (1 kq)</div>
          <div class="product-price">2.50 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🥛</div>
        <div class="product-info">
          <div class="product-cat">Süd məhsulları</div>
          <div class="product-name">Süd (1 litr)</div>
          <div class="product-price">1.80 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🍞</div>
        <div class="product-info">
          <div class="product-cat">Çörək</div>
          <div class="product-name">Ağ Çörək</div>
          <div class="product-price">0.60 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🧀</div>
        <div class="product-info">
          <div class="product-cat">Süd məhsulları</div>
          <div class="product-name">Pendir (500 q)</div>
          <div class="product-price">4.20 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🍅</div>
        <div class="product-info">
          <div class="product-cat">Tərəvəz</div>
          <div class="product-name">Pomidor (1 kq)</div>
          <div class="product-price">1.50 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🥚</div>
        <div class="product-info">
          <div class="product-cat">Kənd məhsulları</div>
          <div class="product-name">Yumurta (10 ədəd)</div>
          <div class="product-price">2.80 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">🛢️</div>
        <div class="product-info">
          <div class="product-cat">Yağlar</div>
          <div class="product-name">Ayçiçək yağı (1 L)</div>
          <div class="product-price">3.90 ₼</div>
        </div>
      </div>
      <div class="product-card">
        <div class="product-img">☕</div>
        <div class="product-info">
          <div class="product-cat">İçkilər</div>
          <div class="product-name">Çay (100 q)</div>
          <div class="product-price">2.20 ₼</div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ============ HOURS ============ -->
<section class="section hours-section" id="hours">
  <div class="section-inner">
    <h2>📅 İş Saatlarımız</h2>
    <div class="hours-grid">
      <div class="day-card">
        <div class="day-name">Baz.E</div>
        <div class="day-hours">08:00–22:00</div>
      </div>
      <div class="day-card">
        <div class="day-name">Baz.A</div>
        <div class="day-hours">08:00–22:00</div>
      </div>
      <div class="day-card">
        <div class="day-name">Çər</div>
        <div class="day-hours">08:00–22:00</div>
      </div>
      <div class="day-card today">
        <div class="day-name">Cümə.A</div>
        <div class="day-hours">08:00–22:00</div>
      </div>
      <div class="day-card">
        <div class="day-name">Cümə</div>
        <div class="day-hours">08:00–22:00</div>
      </div>
      <div class="day-card">
        <div class="day-name">Şənbə</div>
        <div class="day-hours">08:00–23:00</div>
      </div>
      <div class="day-card">
        <div class="day-name">Bazar</div>
        <div class="day-hours">08:00–23:00</div>
      </div>
    </div>
  </div>
</section>

<!-- ============ CONTACT / MAP ============ -->
<section class="section contact-section" id="contact">
  <div class="section-inner">
    <div class="contact-grid">
      <div class="contact-info">
        <div class="section-tag">Əlaqə</div>
        <h2>Bizi tapın,<br>bizimlə əlaqə saxlayın</h2>
        <p>Bakıda yerləşirik. İstənilən vaxt zəng edə, marketimizə baş çəkə bilərsiniz.</p>
        <div class="contact-cards">
          <div class="contact-item">
            <div class="contact-icon-wrap">📍</div>
            <div>
              <div class="contact-item-label">Ünvan</div>
              <div class="contact-item-val">Bakı şəhəri, Nizami rayonu</div>
            </div>
          </div>
          <div class="contact-item">
            <div class="contact-icon-wrap">📞</div>
            <div>
              <div class="contact-item-label">Telefon</div>
              <div class="contact-item-val">+994 50 XXX XX XX</div>
            </div>
          </div>
          <div class="contact-item">
            <div class="contact-icon-wrap">📱</div>
            <div>
              <div class="contact-item-label">WhatsApp</div>
              <div class="contact-item-val">+994 55 XXX XX XX</div>
            </div>
          </div>
          <div class="contact-item">
            <div class="contact-icon-wrap">📧</div>
            <div>
              <div class="contact-item-label">E-poçt</div>
              <div class="contact-item-val">info@sefamarket.az</div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div class="map-embed">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d97184.74429448282!2d49.76720475820311!3d40.40927684226497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d6bd6211cf9%3A0x343f6b5e7ae56c6b!2sBaku%2C%20Azerbaijan!5e0!3m2!1sen!2s!4v1700000000000"
            allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade">
          </iframe>
        </div>
        <p style="text-align:center;margin-top:12px;font-size:13px;color:#888;">
          📍 <a href="https://maps.app.goo.gl/78HuTW4zDDb5vvz39" target="_blank" style="color:var(--green);font-weight:600;text-decoration:none;">Google Maps-də aç →</a>
        </p>
      </div>
    </div>
  </div>
</section>

<!-- ============ FOOTER ============ -->
<footer>
  <div class="footer-inner">
    <div class="footer-brand">
      <div class="brand-name">🌿 Şəfa Market</div>
      <p>Bakının ən güvenilir marketi. Hər gün təzə, hər zaman keyfiyyətli məhsullarla ailənizdə hər gün yanınızdayıq.</p>
    </div>
    <div class="footer-col">
      <h4>Keçidlər</h4>
      <ul>
        <li><a href="#about">Haqqımızda</a></li>
        <li><a href="#products">Məhsullar</a></li>
        <li><a href="#hours">İş saatları</a></li>
        <li><a href="#contact">Əlaqə</a></li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Əlaqə</h4>
      <ul>
        <li><a href="tel:+994501234567">📞 +994 50 XXX XX XX</a></li>
        <li><a href="#">📱 WhatsApp</a></li>
        <li><a href="mailto:info@sefamarket.az">📧 info@sefamarket.az</a></li>
        <li><a href="https://maps.app.goo.gl/78HuTW4zDDb5vvz39" target="_blank">📍 Xəritədə gör</a></li>
      </ul>
    </div>
  </div>
  <div class="footer-bottom">
    <span>© 2024 Şəfa Market. Bütün hüquqlar qorunur.</span>
    <span>❤️ Bakıda hazırlanmışdır</span>
  </div>
</footer>

<!-- ============ ADMIN LOGIN MODAL ============ -->
<div class="admin-overlay" id="adminOverlay">
  <div class="admin-modal">
    <button class="modal-close" onclick="closeAdmin()">✕</button>
    <h2>🔐 Admin Girişi</h2>
    <p class="sub">Şəfa Market idarəetmə panelinə daxil olun</p>
    <div class="form-group">
      <label>İstifadəçi adı</label>
      <input type="text" id="adminUser" placeholder="admin" />
    </div>
    <div class="form-group">
      <label>Şifrə</label>
      <input type="password" id="adminPass" placeholder="••••••••" onkeydown="if(event.key==='Enter')doLogin()" />
    </div>
    <button class="btn-login" onclick="doLogin()">Daxil ol →</button>
    <div class="login-error" id="loginError">❌ İstifadəçi adı və ya şifrə yanlışdır!</div>
  </div>
</div>

<!-- ============ ADMIN DASHBOARD ============ -->
<div class="admin-dashboard" id="adminDashboard">
  <div class="dash-header">
    <div class="dash-logo">🌿 Şəfa Market — Admin Panel</div>
    <button class="btn-logout" onclick="doLogout()">Çıxış →</button>
  </div>
  <div class="dash-body">
    <div class="dash-greeting">Xoş gəldiniz, Admin! 👋</div>
    <div class="dash-stats">
      <div class="dash-stat">
        <div class="dash-stat-label">Ümumi Məhsul</div>
        <div class="dash-stat-val">2,148</div>
        <div class="dash-stat-change">+12 bu həftə</div>
      </div>
      <div class="dash-stat">
        <div class="dash-stat-label">Bu gün satış</div>
        <div class="dash-stat-val">487 ₼</div>
        <div class="dash-stat-change">+18% dünən</div>
      </div>
      <div class="dash-stat">
        <div class="dash-stat-label">Müştərilər</div>
        <div class="dash-stat-val">5,231</div>
        <div class="dash-stat-change">+34 bu ay</div>
      </div>
      <div class="dash-stat">
        <div class="dash-stat-label">Reytinq</div>
        <div class="dash-stat-val">4.9 ⭐</div>
        <div class="dash-stat-change">47 yeni rəy</div>
      </div>
    </div>
    <div class="dash-grid">
      <div class="dash-card">
        <h3>📦 Məhsullar</h3>
        <div class="product-row">
          <div><div class="p-name">Alma (1 kq)</div><div class="p-cat">Meyvə</div></div>
          <div class="p-price">2.50 ₼</div>
        </div>
        <div class="product-row">
          <div><div class="p-name">Süd (1 L)</div><div class="p-cat">Süd məhsulları</div></div>
          <div class="p-price">1.80 ₼</div>
        </div>
        <div class="product-row">
          <div><div class="p-name">Ağ Çörək</div><div class="p-cat">Çörək</div></div>
          <div class="p-price">0.60 ₼</div>
        </div>
        <div class="product-row">
          <div><div class="p-name">Pendir (500 q)</div><div class="p-cat">Süd məhsulları</div></div>
          <div class="p-price">4.20 ₼</div>
        </div>
        <button class="btn-add-product">+ Yeni məhsul əlavə et</button>
      </div>
      <div class="dash-card">
        <h3>🔔 Son Bildirişlər</h3>
        <div class="notice-row">
          <div class="notice-dot"></div>
          <div>
            <div class="notice-text">Süd məhsulları stoku azalır — yenilənsin.</div>
            <div class="notice-time">10 dəqiqə əvvəl</div>
          </div>
        </div>
        <div class="notice-row">
          <div class="notice-dot" style="background:#f59e0b"></div>
          <div>
            <div class="notice-text">Yeni müştəri rəyi əlavə olundu: ⭐⭐⭐⭐⭐</div>
            <div class="notice-time">1 saat əvvəl</div>
          </div>
        </div>
        <div class="notice-row">
          <div class="notice-dot" style="background:#10b981"></div>
          <div>
            <div class="notice-text">Bu günkü satış hədəfi aşıldı (487 ₼ / 400 ₼)</div>
            <div class="notice-time">2 saat əvvəl</div>
          </div>
        </div>
        <div class="notice-row">
          <div class="notice-dot" style="background:#6366f1"></div>
          <div>
            <div class="notice-text">Həftəlik hesabat hazırdır — yükləyin</div>
            <div class="notice-time">Bu gün, 09:00</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function openAdmin() {
    document.getElementById('adminOverlay').classList.add('active');
    setTimeout(()=>document.getElementById('adminUser').focus(), 200);
  }

  function closeAdmin() {
    document.getElementById('adminOverlay').classList.remove('active');
    document.getElementById('loginError').style.display = 'none';
    document.getElementById('adminUser').value = '';
    document.getElementById('adminPass').value = '';
  }

  function doLogin() {
    const u = document.getElementById('adminUser').value.trim();
    const p = document.getElementById('adminPass').value;
    if (u === 'admin' && p === 'admin123') {
      document.getElementById('adminOverlay').classList.remove('active');
      document.getElementById('adminDashboard').classList.add('active');
    } else {
      document.getElementById('loginError').style.display = 'block';
    }
  }

  function doLogout() {
    document.getElementById('adminDashboard').classList.remove('active');
  }

  document.getElementById('adminOverlay').addEventListener('click', function(e){
    if(e.target === this) closeAdmin();
  });
</script>
</body>
</html>
