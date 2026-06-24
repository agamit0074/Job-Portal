<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Dashboard | Qspiders Portal</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Tailwind CSS (Tailwind Classes Only) -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Custom theme configuration for Tailwind -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        brandOrange: '#FF6E31',
                        brandOrangeHover: '#E55B25',
                        brandOrangeLight: '#FFF2EB',
                        textDark: '#091E42',
                        textMuted: '#5E6C84',
                        textLight: '#8993A4',
                        borderColor: '#EBECF0',
                        bgMain: '#F8F9FA'
                    }
                }
            }
        }
    </script>
    
    <!-- FontAwesome for Premium Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Custom scrollbar for clean UI look */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        ::-webkit-scrollbar-thumb {
            background: #FF6E31;
            border-radius: 4px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #E55B25;
        }
        /* Active line indicator for visual tracking steps */
        .step-completed {
            border-color: #FF6E31;
        }
        .step-completed .step-icon {
            background-color: #FF6E31;
            color: #ffffff;
        }
    </style>
</head>
<body class="bg-bgMain text-textDark min-h-screen flex flex-col md:flex-row overflow-x-hidden">

    <!-- SIDEBAR NAVIGATION -->
    <aside id="sidebar" class="bg-white border-r border-borderColor w-full md:w-64 min-h-screen flex flex-col transition-all duration-300 z-50 sticky top-0 hidden md:flex shrink-0">
        <div class="p-6 border-b border-borderColor flex items-center justify-between">
            <a href="index.jsp" class="flex items-center gap-2 font-extrabold text-xl tracking-tight">
                <svg width="26" height="26" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2L2 7L12 12L22 7L12 2Z" fill="#FF6E31"/>
                    <path d="M2 17L12 22L22 17" stroke="#FF6E31" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M2 12L12 17L22 12" stroke="#FF6E31" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                Qspiders<span class="text-brandOrange">.</span>
            </a>
            <!-- Mobile close btn -->
            <button onclick="toggleSidebar()" class="md:hidden text-textMuted hover:text-brandOrange">
                <i class="fa-solid fa-xmark text-xl"></i>
            </button>
        </div>

        <!-- Student Quick Profile Info -->
        <div class="p-4 border-b border-borderColor bg-brandOrangeLight/40 flex items-center gap-3">
            <div class="w-10 h-10 rounded-full bg-brandOrange text-white font-bold flex items-center justify-center shadow-sm">
                RV
            </div>
            <div>
                <h4 class="font-bold text-sm text-textDark">Rohan Verma</h4>
                <p class="text-xs text-textMuted font-medium"><span class="inline-block w-2 h-2 rounded-full bg-emerald-500 mr-1 animate-pulse"></span>Qspiders Alumnus</p>
            </div>
        </div>

        <!-- Navigation Menu -->
        <nav class="flex-1 px-4 py-6 space-y-1.5 overflow-y-auto">
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-semibold text-sm bg-brandOrange text-white shadow-sm transition-all">
                <i class="fa-solid fa-house-laptop text-lg"></i>
                Dashboard
            </a>
            <a href="#" onclick="scrollToSection('jobs-section')" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-magnifying-glass text-lg"></i>
                Explore Jobs
            </a>
            <a href="#" onclick="scrollToSection('applications-section')" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-file-invoice text-lg"></i>
                Applied Jobs
            </a>
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-video text-lg"></i>
                Interviews
                <span class="ml-auto bg-brandOrange text-white text-[10px] px-2 py-0.5 rounded-full font-bold">2</span>
            </a>
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-certificate text-lg"></i>
                My Certificates
            </a>
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-user-gear text-lg"></i>
                Profile Settings
            </a>
        </nav>

        <div class="p-4 border-t border-borderColor">
            <a href="index.jsp" class="flex items-center justify-center gap-2 px-4 py-3 w-full bg-gray-100 hover:bg-red-50 text-red-600 rounded-xl font-semibold text-sm transition-all">
                <i class="fa-solid fa-right-from-bracket"></i>
                Logout Account
            </a>
        </div>
    </aside>

    <!-- MAIN CONTENT AREA -->
    <main class="flex-1 flex flex-col min-w-0">
        
        <!-- TOP HEADER NAVBAR -->
        <header class="bg-white border-b border-borderColor py-4 px-6 md:px-8 flex items-center justify-between sticky top-0 z-40 shadow-sm">
            <div class="flex items-center gap-4">
                <!-- Mobile toggle btn -->
                <button onclick="toggleSidebar()" class="md:hidden p-2 text-textDark hover:bg-brandOrangeLight rounded-lg">
                    <i class="fa-solid fa-bars text-xl"></i>
                </button>
                <div>
                    <h2 class="font-extrabold text-xl md:text-2xl tracking-tight text-textDark">Welcome Back, Rohan!</h2>
                    <p class="text-xs md:text-sm text-textMuted">Your eligibility criteria matches 14 new corporate requisitions today.</p>
                </div>
            </div>

            <!-- Profile & Notifications -->
            <div class="flex items-center gap-4">
                <!-- Notifications Widget -->
                <div class="relative">
                    <button class="w-10 h-10 rounded-full bg-bgMain hover:bg-brandOrangeLight text-textMuted hover:text-brandOrange flex items-center justify-center transition-all">
                        <i class="fa-regular fa-bell text-lg"></i>
                    </button>
                    <span class="absolute top-1.5 right-1.5 w-2.5 h-2.5 bg-brandOrange rounded-full ring-2 ring-white animate-pulse"></span>
                </div>

                <!-- Custom Account Quick Info -->
                <div class="flex items-center gap-3 border-l border-borderColor pl-4">
                    <img src="https://placehold.co/100x100/FFF2EB/FF6E31?text=RV" alt="User avatar" class="w-10 h-10 rounded-xl border-2 border-brandOrange/20 object-cover">
                    <div class="hidden lg:block text-left">
                        <p class="font-bold text-sm leading-tight font-semibold">Rohan Verma</p>
                        <p class="text-xs text-textMuted">MCA Graduate (2025)</p>
                    </div>
                </div>
            </div>
        </header>

        <!-- DASHBOARD CONTAINER -->
        <div class="flex-1 p-6 md:p-8 space-y-8 max-w-7xl w-full mx-auto">
            
            <!-- FAST CALL-TO-ACTION BAR -->
            <div class="bg-gradient-to-r from-brandOrange to-brandOrangeHover text-white p-6 rounded-2xl flex flex-col md:flex-row items-center justify-between gap-4 shadow-md">
                <div>
                    <h3 class="text-lg md:text-xl font-extrabold"><i class="fa-solid fa-shield-halved mr-1"></i> Qspiders Job Guarantee Verification</h3>
                    <p class="text-sm text-brandOrangeLight/90 mt-1">Your academic profile is verified at 74% aggregate aggregate. You are eligible for direct client drives.</p>
                </div>
                <button onclick="scrollToSection('jobs-section')" class="bg-white hover:bg-brandOrangeLight text-brandOrange px-6 py-3 rounded-xl font-bold text-sm shadow-sm flex items-center gap-2 transition-all shrink-0">
                    <i class="fa-solid fa-paper-plane"></i>
                    Apply to Active Drives
                </button>
            </div>

            <!-- DASHBOARD STATISTICS METRICS -->
            <section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                <!-- Stat Card 1 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Applied Positions</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2" id="stat-applied">8</h3>
                        <p class="text-xs text-emerald-600 font-semibold mt-1"><i class="fa-solid fa-circle-check"></i> 1 Drive Active</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-orange-100 text-brandOrange flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-paper-plane"></i>
                    </div>
                </div>

                <!-- Stat Card 2 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Shortlists & Rounds</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2">3</h3>
                        <p class="text-xs text-emerald-600 font-semibold mt-1"><i class="fa-solid fa-arrow-trend-up"></i> In advanced steps</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-medal"></i>
                    </div>
                </div>

                <!-- Stat Card 3 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Upcoming Interviews</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2">2</h3>
                        <p class="text-xs text-amber-500 font-semibold mt-1"><i class="fa-solid fa-calendar-day"></i> Next scheduled tomorrow</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-amber-100 text-amber-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-video"></i>
                    </div>
                </div>

                <!-- Stat Card 4 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Profile Completion</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2">85%</h3>
                        <div class="w-full bg-gray-200 h-1.5 rounded-full mt-2">
                            <div class="bg-brandOrange h-1.5 rounded-full" style="width: 85%;"></div>
                        </div>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-blue-100 text-blue-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-id-card"></i>
                    </div>
                </div>
            </section>

            <!-- MAIN SPLIT WORKSPACE -->
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                
                <!-- LEFT SECTION: MATCHED JOBS & TRACKING PIPELINE -->
                <div class="lg:col-span-2 space-y-8">
                    
                    <!-- HIGHLY TARGETED RECOMMENDED JOBS -->
                    <div class="bg-white border border-borderColor rounded-2xl shadow-sm overflow-hidden" id="jobs-section">
                        <div class="p-6 border-b border-borderColor flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                            <div>
                                <h3 class="font-extrabold text-lg text-textDark">Recommended Jobs For You</h3>
                                <p class="text-xs text-textMuted">Positions matching your MCA graduation degree & aggregate (Min 60%).</p>
                            </div>
                            
                            <!-- Internal Search for Jobs -->
                            <div class="relative w-full sm:w-64">
                                <input type="text" id="jobSearch" onkeyup="filterJobs()" placeholder="Search skills, locations..." class="w-full pl-9 pr-4 py-2 border border-borderColor rounded-xl text-xs focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight">
                                <span class="absolute left-3.5 top-1/2 -translate-y-1/2 text-textLight text-xs"><i class="fa-solid fa-magnifying-glass"></i></span>
                            </div>
                        </div>

                        <!-- Job Listing Cards Grid -->
                        <div class="p-6 space-y-4" id="jobs-list">
                            
                            <!-- Job 1 -->
                            <div class="job-card bg-white hover:bg-brandOrangeLight/10 border border-borderColor hover:border-brandOrange/30 p-5 rounded-2xl transition-all flex flex-col md:flex-row md:items-center justify-between gap-4" 
                                 data-title="Associate Software Engineer - Java" data-company="Wipro Technologies" data-skills="Java, SQL, Spring Boot, JDBC" data-location="Bangalore">
                                <div class="space-y-2">
                                    <div class="flex items-center gap-2">
                                        <span class="px-2.5 py-1 text-[10px] font-bold bg-brandOrangeLight text-brandOrange rounded-md">HIGHLY ELIGIBLE</span>
                                        <span class="text-xs text-textMuted"><i class="fa-solid fa-location-dot"></i> Bangalore (Hybrid)</span>
                                    </div>
                                    <h4 class="font-bold text-textDark text-base md:text-lg">Associate Software Engineer - Java</h4>
                                    <p class="text-xs text-textMuted font-medium">Wipro Technologies • <span class="text-emerald-600 font-semibold">4.5 LPA - 6.5 LPA</span></p>
                                    
                                    <!-- Eligibility requirements list matches post_job.jsp outputs -->
                                    <div class="flex flex-wrap gap-2 pt-1">
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> BE / B.Tech, MCA</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-award"></i> Min 60% Aggregate</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-calendar"></i> 2024, 2025 YOP</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-handshake"></i> 2 Years Service Bond</span>
                                    </div>
                                </div>
                                <div class="flex items-center gap-2 self-end md:self-center shrink-0">
                                    <button onclick="openJobDetailsModal('Associate Software Engineer - Java', 'Wipro Technologies', 'Bangalore (Hybrid)', 'Java, SQL, OOPs Concepts, Spring Boot', 'B.E/B.Tech, MCA', 'Min 60% Aggregate', '2024, 2025 YOP', '2 Years Service Bond', 'Design, develop and maintain enterprise-grade applications. Code using standardized Java SDK guidelines. Collaborate on REST API frameworks, relational PostgreSQL instances, and assist deployment chains.')" class="px-4 py-2 text-xs font-bold border border-borderColor hover:bg-brandOrangeLight text-textMuted hover:text-brandOrange rounded-xl transition-all">
                                        View Details
                                    </button>
                                    <button onclick="applyToJob(this, 'Associate Software Engineer - Java')" class="px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-sm transition-all">
                                        Apply Now
                                    </button>
                                </div>
                            </div>

                            <!-- Job 2 -->
                            <div class="job-card bg-white hover:bg-brandOrangeLight/10 border border-borderColor hover:border-brandOrange/30 p-5 rounded-2xl transition-all flex flex-col md:flex-row md:items-center justify-between gap-4"
                                 data-title="QA Automation Engineer (Selenium)" data-company="Capgemini" data-skills="Selenium, Java, Cucumber, TestNG" data-location="Pune">
                                <div class="space-y-2">
                                    <div class="flex items-center gap-2">
                                        <span class="px-2.5 py-1 text-[10px] font-bold bg-blue-50 text-blue-600 rounded-md">VERIFIED CLIENT</span>
                                        <span class="text-xs text-textMuted"><i class="fa-solid fa-location-dot"></i> Pune Office</span>
                                    </div>
                                    <h4 class="font-bold text-textDark text-base md:text-lg">QA Automation Engineer (Selenium)</h4>
                                    <p class="text-xs text-textMuted font-medium">Capgemini Corporation • <span class="text-emerald-600 font-semibold">4.0 LPA - 5.5 LPA</span></p>
                                    
                                    <div class="flex flex-wrap gap-2 pt-1">
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> Any Graduate</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-award"></i> Min 55% Aggregate</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-calendar"></i> 2023, 2024, 2025 YOP</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-handshake"></i> No Bond</span>
                                    </div>
                                </div>
                                <div class="flex items-center gap-2 self-end md:self-center shrink-0">
                                    <button onclick="openJobDetailsModal('QA Automation Engineer (Selenium)', 'Capgemini Corporation', 'Pune Office', 'Selenium WebDriver, TestNG, Java programming fundamentals, Git', 'Any Graduate', 'Min 55% Aggregate', '2023, 2024, 2025 YOP', 'No Bond', 'Write, automate, and debug script elements using Java-Selenium frameworks. Integrate Cucumber feature components and trace errors in cross-browser UI rendering pipelines.')" class="px-4 py-2 text-xs font-bold border border-borderColor hover:bg-brandOrangeLight text-textMuted hover:text-brandOrange rounded-xl transition-all">
                                        View Details
                                    </button>
                                    <button onclick="applyToJob(this, 'QA Automation Engineer')" class="px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-sm transition-all">
                                        Apply Now
                                    </button>
                                </div>
                            </div>

                            <!-- Job 3 -->
                            <div class="job-card bg-white hover:bg-brandOrangeLight/10 border border-borderColor hover:border-brandOrange/30 p-5 rounded-2xl transition-all flex flex-col md:flex-row md:items-center justify-between gap-4"
                                 data-title="SQL & Database Developer" data-company="Cognizant" data-skills="SQL Server, PL/SQL, Oracle, Joins" data-location="Noida">
                                <div class="space-y-2">
                                    <div class="flex items-center gap-2">
                                        <span class="px-2.5 py-1 text-[10px] font-bold bg-amber-50 text-amber-600 rounded-md">FAST-TRACK RECRUITMENT</span>
                                        <span class="text-xs text-textMuted"><i class="fa-solid fa-location-dot"></i> Noida Branch</span>
                                    </div>
                                    <h4 class="font-bold text-textDark text-base md:text-lg">SQL & Database Developer</h4>
                                    <p class="text-xs text-textMuted font-medium">Cognizant Tech • <span class="text-emerald-600 font-semibold">3.8 LPA - 4.8 LPA</span></p>
                                    
                                    <div class="flex flex-wrap gap-2 pt-1">
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> MCA, BCA, B.Sc IT</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-award"></i> Min 60% Aggregate</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-calendar"></i> 2025, 2026 YOP</span>
                                        <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2.5 py-1 rounded-lg border border-borderColor"><i class="fa-solid fa-handshake"></i> 1 Year Service Bond</span>
                                    </div>
                                </div>
                                <div class="flex items-center gap-2 self-end md:self-center shrink-0">
                                    <button onclick="openJobDetailsModal('SQL & Database Developer', 'Cognizant Tech', 'Noida Branch', 'Transact-SQL, Stored Procedures, Tuning, DDL/DML standard scripting', 'MCA, BCA, B.Sc IT', 'Min 60% Aggregate', '2025, 2026 YOP', '1 Year Service Bond', 'Manage database records, construct complex joins, design schemas for system integrations, and troubleshoot query performance delays across Oracle databases.')" class="px-4 py-2 text-xs font-bold border border-borderColor hover:bg-brandOrangeLight text-textMuted hover:text-brandOrange rounded-xl transition-all">
                                        View Details
                                    </button>
                                    <button onclick="applyToJob(this, 'SQL & Database Developer')" class="px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-sm transition-all">
                                        Apply Now
                                    </button>
                                </div>
                            </div>

                            <!-- No Results Notification Area -->
                            <div id="noJobsMessage" class="hidden text-center py-8 text-textMuted">
                                <i class="fa-regular fa-folder-open text-4xl mb-3 block text-textLight"></i>
                                No active job requirements match your typed keywords.
                            </div>
                        </div>
                    </div>

                    <!-- APPLICATION TRACKER STAGES / PIPELINE -->
                    <div class="bg-white border border-borderColor rounded-2xl shadow-sm overflow-hidden" id="applications-section">
                        <div class="p-6 border-b border-borderColor">
                            <h3 class="font-extrabold text-lg text-textDark">Active Application Pipeline</h3>
                            <p class="text-xs text-textMuted">Follow your screening metrics from first resume submit to joining confirmation.</p>
                        </div>

                        <div class="p-6 space-y-6">
                            
                            <!-- Application Case 1 -->
                            <div class="p-4 bg-bgMain border border-borderColor rounded-2xl space-y-4">
                                <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
                                    <div>
                                        <h4 class="font-bold text-textDark text-sm sm:text-base">Junior Java Developer</h4>
                                        <p class="text-xs text-textMuted">Infosys Ltd • Applied 4 days ago</p>
                                    </div>
                                    <span class="px-2.5 py-1 text-[11px] font-bold bg-amber-100 text-amber-800 rounded-full self-start sm:self-center">INTERVIEW SCHEDULED</span>
                                </div>

                                <!-- Progress Steppers Tracker -->
                                <div class="grid grid-cols-4 gap-2 pt-2 relative">
                                    <div class="text-center relative">
                                        <div class="w-8 h-8 rounded-full bg-brandOrange text-white font-bold flex items-center justify-center text-xs mx-auto shadow-md">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-textDark mt-1.5 hidden sm:block">Applied</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-brandOrange text-white font-bold flex items-center justify-center text-xs mx-auto shadow-md">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-textDark mt-1.5 hidden sm:block">Aptitude Cleared</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-brandOrange text-white font-bold flex items-center justify-center text-xs mx-auto shadow-md">
                                            <i class="fa-solid fa-video animate-pulse"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-brandOrange mt-1.5 hidden sm:block">Technical Round</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-gray-200 text-textLight font-semibold flex items-center justify-center text-xs mx-auto">
                                            4
                                        </div>
                                        <p class="text-[10px] font-semibold text-textLight mt-1.5 hidden sm:block">Shortlisted</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Application Case 2 -->
                            <div class="p-4 bg-bgMain border border-borderColor rounded-2xl space-y-4">
                                <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
                                    <div>
                                        <h4 class="font-bold text-textDark text-sm sm:text-base">QA Test Specialist</h4>
                                        <p class="text-xs text-textMuted">TCS Group • Applied 1 week ago</p>
                                    </div>
                                    <span class="px-2.5 py-1 text-[11px] font-bold bg-emerald-100 text-emerald-800 rounded-full self-start sm:self-center">SHORTLISTED</span>
                                </div>

                                <!-- Progress Steppers Tracker (Fully complete) -->
                                <div class="grid grid-cols-4 gap-2 pt-2 relative">
                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-emerald-500 text-white font-bold flex items-center justify-center text-xs mx-auto shadow-sm">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-textDark mt-1.5 hidden sm:block">Applied</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-emerald-500 text-white font-bold flex items-center justify-center text-xs mx-auto shadow-sm">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-textDark mt-1.5 hidden sm:block">Aptitude Cleared</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-emerald-500 text-white font-bold flex items-center justify-center text-xs mx-auto shadow-sm">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-textDark mt-1.5 hidden sm:block">Technical Round</p>
                                    </div>

                                    <div class="text-center">
                                        <div class="w-8 h-8 rounded-full bg-emerald-500 text-white font-bold flex items-center justify-center text-xs mx-auto shadow-md">
                                            <i class="fa-solid fa-medal"></i>
                                        </div>
                                        <p class="text-[10px] font-bold text-emerald-600 mt-1.5 hidden sm:block">Shortlisted</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- RIGHT SECTION: UPCOMING INTERVIEWS & VERIFIED SKILLS -->
                <div class="space-y-8">
                    
                    <!-- UPCOMING INTERVIEWS STREAM -->
                    <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm">
                        <div class="flex items-center justify-between mb-6">
                            <h3 class="font-extrabold text-lg text-textDark">Scheduled Interviews</h3>
                            <span class="bg-brandOrangeLight text-brandOrange px-2.5 py-1 text-[10px] font-bold rounded-md">TOMORROW</span>
                        </div>

                        <!-- Schedule cards stream -->
                        <div class="space-y-4">
                            <!-- Interview Item 1 -->
                            <div class="flex items-start gap-4 p-3 hover:bg-bgMain rounded-xl transition-all">
                                <div class="bg-brandOrangeLight text-brandOrange font-bold rounded-lg p-2.5 flex flex-col items-center justify-center min-w-[55px] shadow-sm">
                                    <span class="text-xs">11:00</span>
                                    <span class="text-[10px] font-medium uppercase">AM</span>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-sm text-textDark truncate">Infosys Technical Drive</h4>
                                    <p class="text-xs text-textMuted">Java SE & OOPs Evaluation</p>
                                    <a href="#" onclick="triggerToast('Joining Virtual Interview Portal...', 'success')" class="flex items-center gap-1.5 text-xs text-brandOrange font-bold mt-1.5">
                                        <i class="fa-solid fa-video"></i> Join Live Room
                                    </a>
                                </div>
                            </div>

                            <!-- Interview Item 2 -->
                            <div class="flex items-start gap-4 p-3 hover:bg-bgMain rounded-xl transition-all">
                                <div class="bg-orange-50 text-brandOrange font-bold rounded-lg p-2.5 flex flex-col items-center justify-center min-w-[55px] shadow-sm">
                                    <span class="text-xs">03:30</span>
                                    <span class="text-[10px] font-medium uppercase">PM</span>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-sm text-textDark truncate">TCS HR Final Round</h4>
                                    <p class="text-xs text-textMuted">Package & Agreement Terms</p>
                                    <span class="text-xs text-textLight font-semibold mt-1.5 block"><i class="fa-solid fa-clock"></i> Link Active Tomorrow</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- QSPIDERS VERIFIED TRAINING BADGES -->
                    <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm">
                        <div class="flex items-center justify-between mb-4">
                            <h3 class="font-extrabold text-lg text-textDark">Qspiders Certifications</h3>
                            <span class="text-emerald-500 text-xs font-semibold"><i class="fa-solid fa-circle-check"></i> Verified</span>
                        </div>
                        <p class="text-xs text-textMuted mb-6">These badges are pre-validated by Qspiders assessors and are directly visible to premium corporate HR boards.</p>

                        <!-- Badge Cards Stack -->
                        <div class="space-y-3.5">
                            <!-- Badge item 1 -->
                            <div class="flex items-center gap-3.5 p-3 border border-borderColor rounded-xl bg-bgMain">
                                <div class="w-10 h-10 rounded-lg bg-orange-100 text-brandOrange flex items-center justify-center text-lg shadow-inner shrink-0">
                                    <i class="fa-brands fa-java font-bold"></i>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-xs text-textDark truncate">Core Java Technical Specialist</h4>
                                    <p class="text-[10px] text-textMuted">Grade: <span class="text-brandOrange font-bold">A+</span> (8.8 CGPA Assessment)</p>
                                </div>
                            </div>

                            <!-- Badge item 2 -->
                            <div class="flex items-center gap-3.5 p-3 border border-borderColor rounded-xl bg-bgMain">
                                <div class="w-10 h-10 rounded-lg bg-blue-100 text-blue-600 flex items-center justify-center text-lg shadow-inner shrink-0">
                                    <i class="fa-solid fa-vial-virus"></i>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-xs text-textDark truncate">Manual & Selenium Automation Testing</h4>
                                    <p class="text-[10px] text-textMuted">Grade: <span class="text-blue-600 font-bold">A</span> (8.2 CGPA Assessment)</p>
                                </div>
                            </div>

                            <!-- Badge item 3 -->
                            <div class="flex items-center gap-3.5 p-3 border border-borderColor rounded-xl bg-bgMain opacity-60">
                                <div class="w-10 h-10 rounded-lg bg-amber-100 text-amber-600 flex items-center justify-center text-lg shadow-inner shrink-0">
                                    <i class="fa-solid fa-database"></i>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-xs text-textDark truncate">SQL Database Developer</h4>
                                    <p class="text-[10px] text-textMuted">Assessment: <span class="text-amber-600 font-bold">Scheduled for Friday</span></p>
                                </div>
                            </div>
                        </div>

                        <!-- Badge note -->
                        <div class="bg-brandOrangeLight text-brandOrange hover:bg-brandOrangeLight/70 p-4 rounded-xl border border-brandOrange/10 mt-6 flex items-start gap-3 transition-colors">
                            <span class="text-lg"><i class="fa-solid fa-award"></i></span>
                            <p class="text-xs leading-relaxed font-medium">Complete your SQL practice labs to auto-unlock candidate matches for database positions.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <footer class="bg-white border-t border-borderColor py-6 px-8 text-center text-xs text-textMuted mt-auto flex flex-col sm:flex-row items-center justify-between gap-4">
            <p>&copy; 2026 Qspiders Job Portal. Internal Alumni Dashboard Panel. All rights reserved.</p>
            <div class="flex gap-4">
                <a href="#" class="hover:text-brandOrange transition-colors">Privacy Policy</a>
                <span>•</span>
                <a href="#" class="hover:text-brandOrange transition-colors">Terms of Use</a>
            </div>
        </footer>
    </main>

    <!-- INTERACTIVE DETAILED JOB MODAL -->
    <div id="jobModal" class="fixed inset-0 bg-textDark/50 backdrop-blur-sm z-50 flex items-center justify-center p-4 hidden">
        <div class="bg-white rounded-2xl w-full max-w-lg overflow-hidden shadow-2xl border border-borderColor transition-all scale-95 opacity-0 transform" id="modalContent">
            
            <!-- Modal Header -->
            <div class="p-6 border-b border-borderColor flex items-center justify-between bg-gradient-to-r from-white to-brandOrangeLight/30">
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 rounded-xl bg-brandOrange text-white font-bold flex items-center justify-center shadow-md">
                        <i class="fa-solid fa-briefcase text-sm"></i>
                    </div>
                    <div>
                        <h3 class="font-extrabold text-lg text-textDark" id="modalJobTitle">Associate Software Engineer - Java</h3>
                        <p class="text-xs text-textMuted" id="modalCompany">Wipro Technologies</p>
                    </div>
                </div>
                <button onclick="closeJobDetailsModal()" class="w-8 h-8 rounded-full hover:bg-bgMain text-textMuted hover:text-textDark flex items-center justify-center transition-all">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>

            <!-- Modal Body -->
            <div class="p-6 space-y-5 max-h-[60vh] overflow-y-auto">
                <div class="grid grid-cols-2 gap-4">
                    <div class="bg-bgMain p-3 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase block">Required Degrees</span>
                        <span class="font-bold text-xs text-textDark mt-1 block" id="modalDegree">B.E/B.Tech, MCA</span>
                    </div>
                    <div class="bg-bgMain p-3 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase block">Minimum Aggregate</span>
                        <span class="font-bold text-xs text-textDark mt-1 block" id="modalPercentage">Min 60% Aggregate</span>
                    </div>
                    <div class="bg-bgMain p-3 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase block">Eligible YOP</span>
                        <span class="font-bold text-xs text-textDark mt-1 block" id="modalYOP">2024, 2025 YOP</span>
                    </div>
                    <div class="bg-bgMain p-3 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase block">Agreement / Bond</span>
                        <span class="font-bold text-xs text-textDark mt-1 block" id="modalBond">2 Years Service Bond</span>
                    </div>
                </div>

                <!-- Key Skills & Location info -->
                <div class="space-y-1">
                    <span class="text-[10px] font-bold text-textLight uppercase block">Technical Skills Required</span>
                    <span class="text-xs text-brandOrange font-bold" id="modalSkills">Java, SQL, Spring Boot, JDBC</span>
                </div>

                <div class="space-y-1.5">
                    <label class="text-xs font-bold text-textMuted">Roles & Responsibilities Summary</label>
                    <div class="p-4 bg-orange-50/50 text-textDark text-xs rounded-xl border border-orange-100 leading-relaxed font-medium" id="modalDescription">
                        Design, develop and maintain enterprise-grade applications. Code using standardized Java SDK guidelines. Collaborate on REST API frameworks, relational PostgreSQL instances, and assist deployment chains.
                    </div>
                </div>
            </div>

            <!-- Modal Footer -->
            <div class="p-6 bg-bgMain border-t border-borderColor flex items-center justify-end gap-3">
                <button onclick="closeJobDetailsModal()" class="px-5 py-2.5 text-xs font-bold border border-borderColor hover:bg-red-50 text-textMuted hover:text-red-500 rounded-xl transition-all">
                    Close Details
                </button>
                <button id="modalApplyBtn" onclick="applyFromModal()" class="px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all">
                    Apply Now
                </button>
            </div>
        </div>
    </div>

    <!-- NOTIFICATION SNACKBAR TOASTER -->
    <div id="toastNotification" class="fixed bottom-6 right-6 z-50 bg-textDark text-white px-5 py-3 rounded-xl shadow-2xl flex items-center gap-3 transition-all duration-300 transform translate-y-20 opacity-0">
        <span class="text-brandOrange text-lg" id="toastIcon"><i class="fa-solid fa-circle-check"></i></span>
        <p class="text-xs font-bold" id="toastMessage">Application submitted successfully!</p>
    </div>

    <!-- JAVASCRIPT LOGICS & OPERATIONS -->
    <script>
        // Sidebar drawer toggles for responsive design support
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            if (sidebar.classList.contains('hidden')) {
                sidebar.classList.remove('hidden');
                sidebar.classList.add('flex');
            } else {
                sidebar.classList.add('hidden');
                sidebar.classList.remove('flex');
            }
        }

        // Fast page anchors
        function scrollToSection(sectionId) {
            const section = document.getElementById(sectionId);
            if (section) {
                section.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        }

        // Search engine for recommended job cards
        function filterJobs() {
            const searchInput = document.getElementById('jobSearch').value.toLowerCase();
            const cards = document.querySelectorAll('.job-card');
            let matchedAny = false;

            cards.forEach(card => {
                const title = card.getAttribute('data-title').toLowerCase();
                const company = card.getAttribute('data-company').toLowerCase();
                const skills = card.getAttribute('data-skills').toLowerCase();
                const location = card.getAttribute('data-location').toLowerCase();
                
                if (title.includes(searchInput) || company.includes(searchInput) || skills.includes(searchInput) || location.includes(searchInput)) {
                    card.style.display = 'flex';
                    matchedAny = true;
                } else {
                    card.style.display = 'none';
                }
            });

            const msgBox = document.getElementById('noJobsMessage');
            if (matchedAny) {
                msgBox.classList.add('hidden');
            } else {
                msgBox.classList.remove('hidden');
            }
        }

        // Apply To Job Action Handler
        function applyToJob(buttonElement, jobTitle) {
            if (buttonElement.disabled) return;

            buttonElement.disabled = true;
            buttonElement.innerText = "Applying...";
            buttonElement.classList.remove('bg-brandOrange', 'hover:bg-brandOrangeHover');
            buttonElement.classList.add('bg-gray-200', 'text-textMuted');

            setTimeout(() => {
                buttonElement.innerText = "Applied";
                
                // Update total candidate applied metric
                const countElem = document.getElementById('stat-applied');
                countElem.innerText = parseInt(countElem.innerText) + 1;

                triggerToast(`Successfully Applied for: ${jobTitle}`, 'success');
            }, 600);
        }

        // Job Detailed Modal View Controllers
        let activeModalApplyTargetBtn = null;
        let activeModalJobTitle = "";

        function openJobDetailsModal(title, company, location, skills, degrees, percentage, yop, bond, description) {
            document.getElementById('modalJobTitle').innerText = title;
            document.getElementById('modalCompany').innerText = company;
            document.getElementById('modalDegree').innerText = degrees;
            document.getElementById('modalPercentage').innerText = percentage;
            document.getElementById('modalYOP').innerText = yop;
            document.getElementById('modalBond').innerText = bond;
            document.getElementById('modalSkills').innerText = skills;
            document.getElementById('modalDescription').innerText = description;

            activeModalJobTitle = title;

            // Link modal apply button behavior to the original card button
            const cards = document.querySelectorAll('.job-card');
            const matchingCard = Array.from(cards).find(c => c.getAttribute('data-title') === title);
            
            const modalApplyBtn = document.getElementById('modalApplyBtn');
            if (matchingCard) {
                const cardBtn = matchingCard.querySelector('button:nth-child(2)');
                activeModalApplyTargetBtn = cardBtn;
                
                if (cardBtn.innerText === "Applied") {
                    modalApplyBtn.innerText = "Applied";
                    modalApplyBtn.disabled = true;
                    modalApplyBtn.className = "px-5 py-2.5 text-xs font-bold bg-gray-200 text-textMuted rounded-xl cursor-not-allowed shadow-none";
                } else {
                    modalApplyBtn.innerText = "Apply Now";
                    modalApplyBtn.disabled = false;
                    modalApplyBtn.className = "px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all";
                }
            }

            const modal = document.getElementById('jobModal');
            const content = document.getElementById('modalContent');
            
            modal.classList.remove('hidden');
            setTimeout(() => {
                content.classList.remove('scale-95', 'opacity-0');
                content.classList.add('scale-100', 'opacity-100');
            }, 50);
        }

        function closeJobDetailsModal() {
            const modal = document.getElementById('jobModal');
            const content = document.getElementById('modalContent');

            content.classList.remove('scale-100', 'opacity-100');
            content.classList.add('scale-95', 'opacity-0');
            
            setTimeout(() => {
                modal.classList.add('hidden');
                activeModalApplyTargetBtn = null;
            }, 250);
        }

        function applyFromModal() {
            if (activeModalApplyTargetBtn && !activeModalApplyTargetBtn.disabled) {
                applyToJob(activeModalApplyTargetBtn, activeModalJobTitle);
            }
            closeJobDetailsModal();
        }

        // Toast notification system
        function triggerToast(message, type) {
            const toast = document.getElementById('toastNotification');
            const toastMsg = document.getElementById('toastMessage');
            const toastIcon = document.getElementById('toastIcon');

            toastMsg.innerText = message;
            if (type === 'success') {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-check text-emerald-400"></i>';
            } else {
                toastIcon.innerHTML = '<i class="fa-solid fa-triangle-exclamation text-brandOrange"></i>';
            }

            toast.classList.remove('translate-y-20', 'opacity-0');
            toast.classList.add('translate-y-0', 'opacity-100');

            setTimeout(() => {
                toast.classList.remove('translate-y-0', 'opacity-100');
                toast.classList.add('translate-y-20', 'opacity-0');
            }, 3500);
        }
    </script>
</body>
</html>