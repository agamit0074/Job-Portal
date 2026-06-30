<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post a Job | Qspiders Employer Portal</title>
    
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

        .btn-outline {
            color: var(--text-muted);
            background: transparent;
            border: 1px solid var(--border-color);
            padding: 0.5rem 1rem;
            border-radius: 8px;
            font-size: 0.9rem;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.2s ease;
        }

        .btn-outline:hover {
            border-color: var(--text-dark);
            color: var(--text-dark);
        }

        .main-container {
            flex: 1;
            padding: 3rem 5%;
            display: flex;
            justify-content: center;
            align-items: flex-start;
        }

        .form-wrapper {
            background: var(--surface-white);
            width: 100%;
            max-width: 850px;
            border-radius: 16px;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--border-color);
            overflow: hidden;
        }

        .form-header {
            padding: 2rem 2.5rem;
            border-bottom: 1px solid var(--border-color);
            background: linear-gradient(to right, var(--surface-white), var(--light-orange));
        }

        .form-header h1 {
            font-size: 1.8rem;
            color: var(--text-dark);
            margin-bottom: 0.5rem;
        }

        .form-header p {
            color: var(--text-muted);
            font-size: 0.95rem;
        }

        .job-form {
            padding: 2.5rem;
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        /* Form Section Subheadings */
        .form-section-title {
            font-size: 1.1rem;
            font-weight: 700;
            color: var(--text-dark);
            border-left: 4px solid var(--primary-orange);
            padding-left: 10px;
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }

        .form-row.three-cols {
            grid-template-columns: 1fr 1fr 1fr;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        .form-group.full-width {
            grid-column: 1 / -1;
        }

        label {
            font-size: 0.9rem;
            font-weight: 600;
            color: var(--text-dark);
        }

        label span {
            color: #E53E3E; /* Red asterisk for required */
        }

        input, select, textarea {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 1.5px solid var(--border-color);
            border-radius: 8px;
            font-family: inherit;
            font-size: 0.95rem;
            color: var(--text-dark);
            background-color: var(--surface-white);
            transition: all 0.3s ease;
        }

        input::placeholder, textarea::placeholder {
            color: var(--text-light);
        }

        input:focus, select:focus, textarea:focus {
            outline: none;
            border-color: var(--primary-orange);
            box-shadow: 0 0 0 4px rgba(255, 110, 49, 0.1);
        }

        /* Checkbox list styles for Degrees and YOP */
        .checkbox-group {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
            gap: 0.8rem;
            background: #FAFBFC;
            padding: 1rem;
            border-radius: 8px;
            border: 1.5px solid var(--border-color);
        }

        .checkbox-item {
            display: flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
            font-size: 0.9rem;
            color: var(--text-muted);
            user-select: none;
        }

        .checkbox-item input[type="checkbox"] {
            width: auto;
            accent-color: var(--primary-orange);
            cursor: pointer;
            width: 16px;
            height: 16px;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        .form-actions {
            margin-top: 1rem;
            display: flex;
            justify-content: flex-end;
            gap: 1rem;
            padding-top: 1.5rem;
            border-top: 1px solid var(--border-color);
        }

        .btn-submit {
            background: var(--primary-orange);
            color: var(--surface-white);
            border: none;
            padding: 0.8rem 2rem;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
            box-shadow: 0 4px 10px rgba(255, 110, 49, 0.2);
        }

        .btn-submit:hover {
            background: var(--hover-orange);
            transform: translateY(-1px);
            box-shadow: 0 6px 14px rgba(255, 110, 49, 0.3);
        }

        /* Success Message Overlay */
        .overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(9, 30, 66, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
            backdrop-filter: blur(4px);
        }

        .success-modal {
            background: var(--surface-white);
            padding: 3rem;
            border-radius: 16px;
            text-align: center;
            max-width: 450px;
            box-shadow: var(--shadow-md);
            animation: slideUp 0.3s ease-out;
        }

        @keyframes slideUp {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .success-modal svg {
            color: #38A169;
            width: 64px;
            height: 64px;
            margin-bottom: 1.5rem;
        }

        .success-modal h2 {
            margin-bottom: 0.5rem;
            color: var(--text-dark);
        }

        .success-modal p {
            color: var(--text-muted);
            margin-bottom: 2rem;
            line-height: 1.5;
        }

        @media (max-width: 768px) {
            .form-row, .form-row.three-cols {
                grid-template-columns: 1fr;
                gap: 1.5rem;
            }
            .form-wrapper {
                border-radius: 0;
                border: none;
                box-shadow: none;
            }
            .main-container {
                padding: 0;
            }
        }
    </style>
    <% String email = (String)session.getAttribute("email");
       if(email==null){
    	   request.getRequestDispatcher("employee-login.jsp")
    	   .forward(request, response);
       }
     %>
</head>
<body>

    <nav>
        <a href="employer_home.jsp" class="logo">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 2L2 7L12 12L22 7L12 2Z" fill="var(--primary-orange)"/>
                <path d="M2 17L12 22L22 17" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M2 12L12 17L22 12" stroke="var(--primary-orange)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            Qspiders<span class="brand">.</span>
        </a>
        <a href="employer_home.jsp" class="btn-outline">Back to Dashboard</a>
    </nav>

    <div class="main-container">
        <div class="form-wrapper">
            <div class="form-header">
                <h1>Post a New Job Requirement</h1>
                <p>Set up eligibility, locations, qualifications, and requirements for candidates to see.</p>
            </div>

            <!-- Standard JSP Form submission structure -->
            <form action="save_job.jsp" method="POST" class="job-form" onsubmit="handleJobSubmit(event)">
                
                <!-- SECTION 1: JOB DETAILS -->
                <div>
                    <h2 class="form-section-title">1. Job Basics & Location</h2>
                    <br>
                    <div class="form-group full-width" style="margin-bottom: 1.5rem;">
                        <label for="jobTitle">Job Title <span>*</span></label>
                        <input type="text" id="jobTitle" name="jobTitle" placeholder="e.g. Associate Software Engineer - Java" required>
                    </div>

                    <div class="form-row" style="margin-bottom: 1.5rem;">
                        <div class="form-group">
                            <label for="employmentType">Employment Type <span>*</span></label>
                            <select id="employmentType" name="employmentType" required>
                                <option value="" disabled selected>Select Type</option>
                                <option value="Full-Time">Full-Time</option>
                                <option value="Part-Time">Part-Time</option>
                                <option value="Contract">Contract</option>
                                <option value="Internship">Internship</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="workMode">Work Mode (Location Type) <span>*</span></label>
                            <select id="workMode" name="workMode" onchange="toggleCityField()" required>
                                <option value="" disabled selected>Select Work Mode</option>
                                <option value="On-site">On-site (Office)</option>
                                <option value="Remote">Remote (Work from Home)</option>
                                <option value="Hybrid">Hybrid</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group" id="cityGroup">
                            <label for="locationCity">City Location <span>*</span></label>
                            <input type="text" id="locationCity" name="locationCity" placeholder="e.g. Bangalore, Pune, Noida" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="salary">Salary Range (Optional)</label>
                            <input type="text" id="salary" name="salary" placeholder="e.g. 4.5 LPA - 6 LPA">
                        </div>
                    </div>
                </div>

                <!-- SECTION 2: ELIGIBILITY & QUALIFICATION -->
                <div>
                    <h2 class="form-section-title">2. Qualification & Eligibility</h2>
                    <br>
                    
                    <div class="form-group full-width" style="margin-bottom: 1.5rem;">
                        <label>Eligible Degrees <span>*</span></label>
                        <div class="checkbox-group">
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="B.E/B.Tech"> B.E / B.Tech</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="M.E/M.Tech"> M.E / M.Tech</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="MCA"> MCA</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="BCA"> BCA</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="B.Sc"> B.Sc</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="M.Sc"> M.Sc</label>
                            <label class="checkbox-item"><input type="checkbox" name="degree" value="Other"> Others</label>
                        </div>
                    </div>

                    <div class="form-row three-cols" style="margin-bottom: 1.5rem;">
                        <div class="form-group">
                            <label for="minPercentage">Min Aggregate (%) <span>*</span></label>
                            <select id="minPercentage" name="minPercentage" required>
                                <option value="No Bar">No percentage criteria</option>
                                <option value="50">Min 50% Aggregate</option>
                                <option value="55">Min 55% Aggregate</option>
                                <option value="60" selected>Min 60% Aggregate</option>
                                <option value="65">Min 65% Aggregate</option>
                                <option value="70">Min 70% Aggregate</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="experience">Experience Required <span>*</span></label>
                            <select id="experience" name="experience" required>
                                <option value="0-0" selected>Fresher (0 years)</option>
                                <option value="0-1">0 - 1 Years</option>
                                <option value="1-3">1 - 3 Years</option>
                                <option value="3-5">3 - 5 Years</option>
                                <option value="5+">5+ Years</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="bond">Service Agreement / Bond <span>*</span></label>
                            <select id="bond" name="bond" required>
                                <option value="No Bond">No Bond</option>
                                <option value="1 Year">1 Year</option>
                                <option value="2 Years">2 Years</option>
                                <option value="3 Years">3 Years</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group full-width">
                        <label>Eligible Year of Passing (YOP) <span>*</span></label>
                        <div class="checkbox-group">
                            <label class="checkbox-item"><input type="checkbox" name="yop" value="2023"> 2023</label>
                            <label class="checkbox-item"><input type="checkbox" name="yop" value="2024"> 2024</label>
                            <label class="checkbox-item"><input type="checkbox" name="yop" value="2025"> 2025</label>
                            <label class="checkbox-item"><input type="checkbox" name="yop" value="2026"> 2026</label>
                            <label class="checkbox-item"><input type="checkbox" name="yop" value="2027"> 2027</label>
                        </div>
                    </div>
                </div>

                <!-- SECTION 3: SKILLS & RESPONSIBILITIES -->
                <div>
                    <h2 class="form-section-title">3. Skills & Job Description</h2>
                    <br>
                    
                    <div class="form-group full-width" style="margin-bottom: 1.5rem;">
                        <label for="skills">Key Skills Required <span>*</span></label>
                        <input type="text" id="skills" name="skills" placeholder="e.g. Core Java, SQL, Hibernate, Spring Boot" required>
                    </div>

                    <div class="form-group full-width" style="margin-bottom: 1.5rem;">
                        <label for="responsibilities">Roles & Responsibilities <span>*</span></label>
                        <textarea id="responsibilities" name="responsibilities" placeholder="Detail the day-to-day duties (e.g., Write robust and clean code, collaborate with QA, participate in standups...)" required></textarea>
                    </div>

                    <div class="form-group full-width">
                        <label for="description">Additional Benefits & Company Overview</label>
                        <textarea id="description" name="description" placeholder="Mention company work culture, shifts, joining timeline, training allowances if any..."></textarea>
                    </div>
                </div>

                <!-- FORM ACTIONS -->
                <div class="form-actions">
                    <button type="button" class="btn-outline" onclick="window.location.href='employer_home.jsp'">Cancel</button>
                    <button type="submit" class="btn-submit">Post Job Now</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Success Modal Overlay -->
    <div class="overlay" id="successOverlay">
        <div class="success-modal">
            <svg fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            <h2>Requirement Published!</h2>
            <p>Your job requirement details including qualifications, year of passing eligibility, and locations have been updated successfully.</p>
            <button class="btn-submit" onclick="window.location.href='employer_home.jsp'" style="width: 100%;">Return to Dashboard</button>
        </div>
    </div>

    <script>
        // Check dynamic visibility based on work mode selection
        function toggleCityField() {
            const workMode = document.getElementById("workMode").value;
            const cityInput = document.getElementById("locationCity");
            
            if (workMode === "Remote") {
                cityInput.value = "Remote (Work from Home)";
                cityInput.disabled = true;
            } else {
                if (cityInput.value === "Remote (Work from Home)") {
                    cityInput.value = "";
                }
                cityInput.disabled = false;
                cityInput.placeholder = "e.g. Bangalore, Pune, Noida";
            }
        }

        function handleJobSubmit(event) {
            // Check if at least one Degree is selected
            const degrees = document.querySelectorAll('input[name="degree"]:checked');
            // Check if at least one YOP is selected
            const yops = document.querySelectorAll('input[name="yop"]:checked');

            if (degrees.length === 0) {
                alert("Please select at least one eligible Degree.");
                event.preventDefault();
                return;
            }

            if (yops.length === 0) {
                alert("Please select at least one eligible Year of Passing (YOP).");
                event.preventDefault();
                return;
            }

            // Prevent actual submission for UI review purposes in preview mode
            event.preventDefault();
            
            const submitBtn = event.target.querySelector('.btn-submit');
            submitBtn.innerHTML = 'Publishing Requirement...';
            submitBtn.style.opacity = '0.8';
            submitBtn.disabled = true;

            // Simulate server lag
            setTimeout(() => {
                document.getElementById('successOverlay').style.display = 'flex';
                submitBtn.innerHTML = 'Post Job Now';
                submitBtn.style.opacity = '1';
                submitBtn.disabled = false;
                event.target.reset(); // clear form
            }, 800);
        }
    </script>
</body>
</html>