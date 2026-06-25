<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Qspiders Job Portal | Find Your Dream Job</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <style>
        :root {
            /* Corporate Light Theme Palette (Naukri Inspired) */
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
            gap: 3rem;
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

        .logo span {
            color: var(--primary-orange);
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
        }
        
        .employer-link {
            color: var(--text-dark);
            font-weight: 600;
            font-size: 0.9rem;
            text-decoration: none;
            margin-right: 1rem;
            border-right: 1px solid var(--border-color);
            padding-right: 1.5rem;
        }

        .employer-link:hover {
            color: var(--primary-orange);
        }

        .hero {
            padding: 4rem 5% 3rem;
            text-align: center;
            background: linear-gradient(180deg, var(--surface-white) 0%, var(--bg-main) 100%);
            border-bottom: 1px solid var(--border-color);
        }

        .hero h1 {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--text-dark);
            margin-bottom: 0.5rem;
            letter-spacing: -1px;
        }

        .hero p {
            font-size: 1.1rem;
            color: var(--text-muted);
            margin-bottom: 2.5rem;
        }

        .search-container {
            max-width: 900px;
            margin: 0 auto;
            background: var(--surface-white);
            border-radius: 50px;
            display: flex;
            align-items: center;
            padding: 0.5rem;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--border-color);
        }

        .search-field {
            flex: 1;
            display: flex;
            align-items: center;
            padding: 0.5rem 1.5rem;
            position: relative;
        }

        .search-field:not(:last-child)::after {
            content: '';
            position: absolute;
            right: 0;
            top: 15%;
            height: 70%;
            width: 1px;
            background-color: var(--border-color);
        }

        .search-field input, .search-field select {
            width: 100%;
            border: none;
            outline: none;
            font-family: 'Inter', sans-serif;
            font-size: 1rem;
            color: var(--text-dark);
            background: transparent;
        }

        .search-field input::placeholder {
            color: var(--text-light);
        }
        
        .search-icon {
            color: var(--text-light);
            margin-right: 10px;
            font-size: 1.2rem;
        }

        .search-btn {
            padding: 1rem 2.5rem;
            border-radius: 50px;
            font-size: 1rem;
        }

        .portals-section {
            padding: 4rem 5%;
            max-width: 1200px;
            margin: 0 auto;
            width: 100%;
        }

        .section-title {
            text-align: center;
            font-size: 1.8rem;
            margin-bottom: 3rem;
            font-weight: 700;
            color: var(--text-dark);
        }

        .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2.5rem;
        }

        .portal-card {
            background: var(--surface-white);
            border-radius: 16px;
            padding: 2.5rem;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-color);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .portal-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
            border-color: var(--light-orange);
        }

        .card-header {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .card-icon {
            width: 50px;
            height: 50px;
            border-radius: 12px;
            background: var(--light-orange);
            color: var(--primary-orange);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
        }

        .portal-card h2 {
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--text-dark);
        }

        .portal-card p {
            color: var(--text-muted);
            line-height: 1.6;
            margin-bottom: 2rem;
            font-size: 0.95rem;
        }

        .card-buttons {
            display: flex;
            gap: 1rem;
        }

        .card-buttons .btn {
            flex: 1;
            padding: 0.8rem 1rem;
        }

        @media (max-width: 900px) {
            .search-container {
                flex-direction: column;
                border-radius: 16px;
                padding: 1rem;
            }
            .search-field {
                width: 100%;
                padding: 1rem 0.5rem;
            }
            .search-field:not(:last-child)::after {
                display: none;
            }
            .search-field:not(:last-child) {
                border-bottom: 1px solid var(--border-color);
            }
            .search-btn {
                width: 100%;
                border-radius: 12px;
                margin-top: 1rem;
            }
            .nav-links {
                display: none; /* Hide on small mobile for simplicity in this demo */
            }
            .employer-link {
                display: none;
            }
        }
    </style>
</head>
<body>

    <nav>
        <div class="nav-left">
            <a href="#" class="logo">
                <svg width="28" height="28" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2L2 7L12 12L22 7L12 2Z" fill="var(--primary-orange)"/>
                    <path d="M2 17L12 22L22 17" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M2 12L12 17L22 12" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                Qspiders<span>.</span>
            </a>
            <ul class="nav-links">
                <li><a href="#jobs">Jobs</a></li>
                <li><a href="#companies">Companies</a></li>
                <li><a href="#services">Services</a></li>
            </ul>
        </div>
        <div class="nav-right">
            <a href="employee_portal.jsp" class="employer-link">For Employers</a>
            <a href="candidate-login.jsp" class="btn btn-outline" onclick="handleAction(event)">Login</a>
            <a href="candidate-signup.jsp" class="btn btn-solid" onclick="handleAction(event)">Register</a>
        </div>
    </nav>

    <main class="hero">
        <h1>Find your dream job now</h1>
        <p>5 lakh+ jobs for you to explore</p>

        <div class="search-container">
            <div class="search-field">
                <span class="search-icon">🔍</span>
                <input type="text" placeholder="Enter skills, designations, companies">
            </div>
            <div class="search-field">
                <span class="search-icon">📅</span>
                <select>
                    <option value="" disabled selected>Select experience</option>
                    <option value="0">Fresher (0 Years)</option>
                    <option value="1">1 Year</option>
                    <option value="2">2 Years</option>
                    <option value="3">3+ Years</option>
                </select>
            </div>
            <div class="search-field">
                <span class="search-icon">📍</span>
                <input type="text" placeholder="Enter location">
            </div>
            <button class="btn btn-solid search-btn" onclick="handleAction(event)">Search</button>
        </div>
    </main>

    <section class="portals-section">
        <h2 class="section-title">Access Your Portal</h2>
        
        <div class="cards-grid">
            
            <!-- Candidate Card -->
            <div class="portal-card">
                <div class="card-header">
                    <div class="card-icon">👨‍💼</div>
                    <h2>Job Seekers</h2>
                </div>
                <p>Register now to apply for the latest tech jobs, track your applications, and get discovered by top MNCs and startups.</p>
                <div class="card-buttons">
                    <a href="candidate-login.jsp" class="btn btn-outline" onclick="handleAction(event)">Login</a>
                    <a href="candidate-signup.jsp" class="btn btn-solid" onclick="handleAction(event)">Register for Free</a>
                </div>
            </div>

            <!-- Employer Card -->
            <div class="portal-card">
                <div class="card-header">
                    <div class="card-icon">🏢</div>
                    <h2>Employers / HR</h2>
                </div>
                <p>Hire the top 1% of tech talent. Post your jobs, screen candidates effortlessly, and build your dream engineering team.</p>
                <div class="card-buttons">
                    <a href="employee-login.jsp" class="btn btn-outline" onclick="handleAction(event)">Employer Login</a>
                    <a href="employee-signup.jsp" class="btn btn-solid" onclick="handleAction(event)">Post a Job</a>
                </div>
            </div>

        </div>
    </section>

    <script>
        // Simple script to handle button feedback without using alerts
        function handleAction(event) {
            // Prevent default navigation strictly for this preview environment
            event.preventDefault();
            
            const btn = event.currentTarget;
            const originalText = btn.innerText;
            
            // Provide smooth visual feedback
            btn.innerText = 'Loading...';
            btn.style.opacity = '0.7';
            
            // Simulate processing time
            setTimeout(() => {
                // In a real JSP application, allow normal form submission or link traversal:
                window.location.href = btn.getAttribute('href');
                
                // For preview purposes, we revert text
                btn.innerText = originalText;
                btn.style.opacity = '1';
                console.log("Action triggered on: " + originalText);
            }, 600);
        }
    </script>
</body>
</html>