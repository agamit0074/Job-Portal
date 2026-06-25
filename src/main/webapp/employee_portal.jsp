<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Portal | Hire Top Talent via Qspiders</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <style>
        :root {
            /* Corporate Light Theme Palette */
            --primary-orange: #FF6E31;
            --hover-orange: #E55B25;
            --light-orange: #FFF2EB;
            
            --bg-main: #F8F9FA;
            --surface-white: #FFFFFF;
            
            --text-dark: #091E42;
            --text-muted: #5E6C84;
            --text-light: #8993A4;
            
            --border-color: #EBECF0;
            --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.04);
            --shadow-md: 0 8px 24px rgba(0, 0, 0, 0.08);
            --shadow-lg: 0 12px 32px rgba(255, 110, 49, 0.15);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg-main);
            color: var(--text-dark);
            -webkit-font-smoothing: antialiased;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        nav {
            background-color: var(--surface-white);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 5%;
            box-shadow: var(--shadow-sm);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .nav-left {
            display: flex;
            align-items: center;
            gap: 2rem;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 800;
            color: var(--text-dark);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 8px;
            letter-spacing: -0.5px;
        }

        .logo span.brand { color: var(--primary-orange); }
        .logo span.badge {
            font-size: 0.75rem;
            background: var(--light-orange);
            color: var(--primary-orange);
            padding: 0.2rem 0.6rem;
            border-radius: 20px;
            font-weight: 600;
            margin-left: 5px;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            list-style: none;
        }

        .nav-links a {
            color: var(--text-muted);
            text-decoration: none;
            font-size: 0.95rem;
            font-weight: 500;
            transition: color 0.2s ease;
        }

        .nav-links a:hover {
            color: var(--primary-orange);
        }

        .nav-right {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .btn {
            padding: 0.6rem 1.2rem;
            border-radius: 50px;
            font-size: 0.9rem;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            transition: all 0.2s ease;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .btn-outline {
            color: var(--primary-orange);
            background: transparent;
            border: 1px solid var(--primary-orange);
        }

        .btn-outline:hover {
            background: var(--light-orange);
        }

        .btn-solid {
            color: var(--surface-white);
            background: var(--primary-orange);
            border: 1px solid var(--primary-orange);
            box-shadow: 0 4px 10px rgba(255, 110, 49, 0.2);
        }

        .btn-solid:hover {
            background: var(--hover-orange);
            border-color: var(--hover-orange);
            box-shadow: 0 6px 14px rgba(255, 110, 49, 0.3);
            transform: translateY(-1px);
        }

        .hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 5rem 5% 4rem;
            background: linear-gradient(180deg, var(--surface-white) 0%, var(--bg-main) 100%);
            border-bottom: 1px solid var(--border-color);
            gap: 3rem;
        }

        .hero-content {
            flex: 1;
            max-width: 600px;
        }

        .hero-badge {
            display: inline-block;
            background: var(--light-orange);
            color: var(--primary-orange);
            padding: 0.4rem 1rem;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.85rem;
            margin-bottom: 1.5rem;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 800;
            color: var(--text-dark);
            margin-bottom: 1.5rem;
            line-height: 1.2;
            letter-spacing: -1px;
        }

        .hero h1 span {
            color: var(--primary-orange);
        }

        .hero p {
            font-size: 1.15rem;
            color: var(--text-muted);
            margin-bottom: 2.5rem;
            line-height: 1.6;
        }

        .hero-actions {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .hero-actions .btn {
            padding: 0.8rem 1.8rem;
            font-size: 1rem;
        }

        .hero-stats {
            margin-top: 3rem;
            display: flex;
            gap: 2.5rem;
            padding-top: 2rem;
            border-top: 1px solid var(--border-color);
        }

        .stat-item h3 {
            font-size: 1.5rem;
            color: var(--text-dark);
            font-weight: 700;
        }
        
        .stat-item p {
            font-size: 0.9rem;
            color: var(--text-muted);
            margin-bottom: 0;
        }

        .hero-image {
            flex: 1;
            display: flex;
            justify-content: flex-end;
            position: relative;
        }

        .mock-dashboard {
            background: var(--surface-white);
            border: 1px solid var(--border-color);
            border-radius: 16px;
            box-shadow: var(--shadow-lg);
            width: 100%;
            max-width: 500px;
            aspect-ratio: 4/3;
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }

        .dash-header {
            background: var(--bg-main);
            padding: 15px;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            gap: 8px;
        }

        .dash-dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: #e0e0e0;
        }

        .dash-dot:nth-child(1) { background: #ff5f56; }
        .dash-dot:nth-child(2) { background: #ffbd2e; }
        .dash-dot:nth-child(3) { background: #27c93f; }

        .dash-body {
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .dash-line {
            height: 12px;
            background: var(--border-color);
            border-radius: 10px;
            width: 100%;
        }

        .dash-line.short { width: 60%; }
        .dash-line.orange { background: var(--light-orange); width: 80%; }

        .advantages-section {
            padding: 5rem 5%;
            max-width: 1200px;
            margin: 0 auto;
            width: 100%;
        }

        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
            color: var(--text-dark);
            margin-bottom: 1rem;
        }

        .section-header p {
            color: var(--text-muted);
            font-size: 1.1rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .adv-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2.5rem;
        }

        .adv-card {
            background: var(--surface-white);
            border-radius: 16px;
            padding: 2.5rem 2rem;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-color);
            transition: all 0.3s ease;
        }

        .adv-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
            border-color: var(--light-orange);
        }

        .adv-icon {
            width: 60px;
            height: 60px;
            border-radius: 16px;
            background: var(--light-orange);
            color: var(--primary-orange);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
        }

        .adv-card h3 {
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--text-dark);
            margin-bottom: 1rem;
        }

        .adv-card p {
            color: var(--text-muted);
            line-height: 1.6;
            font-size: 0.95rem;
        }

        .cta-section {
            background: var(--text-dark);
            padding: 4rem 5%;
            text-align: center;
            color: var(--surface-white);
            margin-top: 2rem;
        }

        .cta-section h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        .cta-section p {
            color: var(--text-light);
            margin-bottom: 2rem;
            font-size: 1.1rem;
        }

        .cta-section .btn-solid {
            background: var(--primary-orange);
            border-color: var(--primary-orange);
        }

        footer {
            background: var(--surface-white);
            padding: 2rem 5%;
            text-align: center;
            border-top: 1px solid var(--border-color);
            color: var(--text-muted);
            font-size: 0.9rem;
        }

        @media (max-width: 900px) {
            .hero {
                flex-direction: column;
                text-align: center;
                padding: 3rem 5%;
            }
            .hero-content {
                max-width: 100%;
            }
            .hero-actions {
                justify-content: center;
            }
            .hero-stats {
                justify-content: center;
            }
            .hero-image {
                width: 100%;
                margin-top: 2rem;
            }
            .nav-links {
                display: none;
            }
        }
    </style>
</head>
<body>

    <nav>
        <div class="nav-left">
            <a href="index.jsp" class="logo">
                <svg width="28" height="28" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2L2 7L12 12L22 7L12 2Z" fill="var(--primary-orange)"/>
                    <path d="M2 17L12 22L22 17" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M2 12L12 17L22 12" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                Qspiders<span class="brand">.</span>
                <span class="badge">For Employers</span>
            </a>
            <ul class="nav-links">
                <li><a href="#products">Products</a></li>
                <li><a href="#solutions">Solutions</a></li>
                <li><a href="#pricing">Pricing</a></li>
            </ul>
        </div>
        <div class="nav-right">
            <a href="employee-login.jsp" class="btn btn-outline">Employer Login</a>
            <a href="employee-signup.jsp" class="btn btn-solid">Sign Up / Post a Job</a>
        </div>
    </nav>

    <header class="hero">
        <div class="hero-content">
            <span class="hero-badge">🚀 The #1 Tech Hiring Platform</span>
            <h1>Hire the top 1% of tech talent <span>faster.</span></h1>
            <p>Access a curated pool of pre-assessed developers, engineers, and tech professionals. Streamline your hiring workflow from sourcing to offering.</p>
            
            <div class="hero-actions">
                <a href="employee-signup.jsp" class="btn btn-solid">
                    Post a Job Now
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                </a>
                <a href="#contact" class="btn btn-outline" onclick="handleAction(event)">Talk to Sales</a>
            </div>

            <div class="hero-stats">
                <div class="stat-item">
                    <h3>500+</h3>
                    <p>Companies Hiring</p>
                </div>
                <div class="stat-item">
                    <h3>2M+</h3>
                    <p>Active Job Seekers</p>
                </div>
                <div class="stat-item">
                    <h3>3 Days</h3>
                    <p>Avg. Time to Hire</p>
                </div>
            </div>
        </div>
        
        <div class="hero-image">
            <div class="mock-dashboard">
                <div class="dash-header">
                    <div class="dash-dot"></div>
                    <div class="dash-dot"></div>
                    <div class="dash-dot"></div>
                </div>
                <div class="dash-body">
                    <div class="dash-line orange"></div>
                    <div class="dash-line"></div>
                    <div class="dash-line short"></div>
                    <br>
                    <div class="dash-line orange"></div>
                    <div class="dash-line"></div>
                    <div class="dash-line short"></div>
                </div>
            </div>
        </div>
    </header>

    <section class="advantages-section" id="solutions">
        <div class="section-header">
            <h2>Why companies hire with Qspiders</h2>
            <p>We provide the tools and reach you need to build a world-class engineering and tech team with minimal friction.</p>
        </div>

        <div class="adv-grid">
            <!-- Advantage 1 -->
            <div class="adv-card">
                <div class="adv-icon">🎯</div>
                <h3>Verified Tech Talent</h3>
                <p>Stop sifting through irrelevant resumes. Our platform pre-screens candidates for technical proficiency so you only interview top-tier applicants.</p>
            </div>

            <!-- Advantage 2 -->
            <div class="adv-card">
                <div class="adv-icon">⚡</div>
                <h3>Accelerated Hiring</h3>
                <p>Post a job in minutes. Our AI matching engine instantly recommends candidates whose skills and experience perfectly align with your requirements.</p>
            </div>

            <!-- Advantage 3 -->
            <div class="adv-card">
                <div class="adv-icon">📊</div>
                <h3>End-to-End Tracking</h3>
                <p>Manage your entire recruitment pipeline from a single, intuitive dashboard. Schedule interviews, collaborate with HR, and roll out offers seamlessly.</p>
            </div>
        </div>
    </section>

    <section class="cta-section">
        <h2>Ready to build your dream team?</h2>
        <p>Join hundreds of leading companies hiring on Qspiders today.</p>
        <a href="employee_signup.jsp" class="btn btn-solid" style="padding: 1rem 2.5rem; font-size: 1.1rem;" onclick="handleAction(event)">Start Hiring for Free</a>
    </section>

    <footer>
        <p>&copy; 2026 Qspiders Job Portal. All rights reserved. For Employers.</p>
    </footer>

    <script>
        function handleAction(event) {
            // Prevent default navigation for preview purposes
            event.preventDefault();
            
            const btn = event.currentTarget;
            const originalText = btn.innerHTML;
            
            // Visual feedback
            btn.innerHTML = 'Processing...';
            btn.style.opacity = '0.8';
            
            // Simulate action
            setTimeout(() => {
                // In a real app: window.location.href = btn.getAttribute('href');
                btn.innerHTML = originalText;
                btn.style.opacity = '1';
                console.log("Navigating to: " + btn.getAttribute('href'));
            }, 600);
        }
    </script>
</body>
</html>