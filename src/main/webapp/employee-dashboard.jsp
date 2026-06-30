<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Dashboard | Qspiders Portal</title>
    
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
    
    <!-- FontAwesome for Premium Dashboard Icons -->
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
    </style>
    <!-- IN JSP PAGES THERE A SOME INBUILT OBJECT  -->
    <!--HttpRequest,HttpResponse,HttpSession  -->
    <% String email = (String)session.getAttribute("email");
       if(email==null){
    	   request.getRequestDispatcher("employee-login.jsp")
    	   .forward(request, response);
       }
     %>
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

        <div class="p-4 border-b border-borderColor bg-brandOrangeLight/40 flex items-center gap-3">
            <div class="w-10 h-10 rounded-full bg-brandOrange text-white font-bold flex items-center justify-center shadow-sm">
                QS
            </div>
            <div>
                <h4 class="font-bold text-sm text-textDark">Qspiders HR Portal</h4>
                <p class="text-xs text-textMuted font-medium"><span class="inline-block w-2 h-2 rounded-full bg-emerald-500 mr-1 animate-pulse"></span>Active Session</p>
            </div>
        </div>

        <!-- Navigation Menu -->
        <nav class="flex-1 px-4 py-6 space-y-1.5 overflow-y-auto">
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-semibold text-sm bg-brandOrange text-white shadow-sm transition-all">
                <i class="fa-solid fa-chart-pie text-lg"></i>
                Dashboard
            </a>
            <a href="job_post.jsp" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-plus-circle text-lg"></i>
                Post a Job
            </a>
            <a href="#" onclick="switchTab('jobs')" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-briefcase text-lg"></i>
                Active Jobs
            </a>
            <a href="#" onclick="switchTab('candidates')" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-user-graduate text-lg"></i>
                Applicants
            </a>
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-calendar-check text-lg"></i>
                Interviews
            </a>
            <a href="#" class="flex items-center gap-3 px-4 py-3 rounded-xl font-medium text-sm text-textMuted hover:bg-brandOrangeLight hover:text-brandOrange transition-all">
                <i class="fa-solid fa-gears text-lg"></i>
                Settings
            </a>
        </nav>

        <div class="p-4 border-t border-borderColor">
            <a href="employee-logout" class="flex items-center justify-center gap-2 px-4 py-3 w-full bg-gray-100 hover:bg-red-50 text-red-600 rounded-xl font-semibold text-sm transition-all">
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
                    <h2 class="font-extrabold text-xl md:text-2xl tracking-tight text-textDark">Welcome Back, Recruiter!</h2>
                    <p class="text-xs md:text-sm text-textMuted">Monitor your job postings, candidate evaluations, and hiring pipeline.</p>
                </div>
            </div>

            <!-- Profile & Notifications -->
            <div class="flex items-center gap-4">
                <!-- Notifications Widget -->
                <div class="relative">
                    <button class="w-10 h-10 rounded-full bg-bgMain hover:bg-brandOrangeLight text-textMuted hover:text-brandOrange flex items-center justify-center transition-all">
                        <i class="fa-regular fa-bell text-lg"></i>
                    </button>
                    <span class="absolute top-1.5 right-1.5 w-2.5 h-2.5 bg-brandOrange rounded-full ring-2 ring-white"></span>
                </div>

                <!-- Custom Account Quick Info -->
                <div class="flex items-center gap-3 border-l border-borderColor pl-4">
                    <img src="https://placehold.co/100x100/FFF2EB/FF6E31?text=HR" alt="User avatar" class="w-10 h-10 rounded-xl border-2 border-brandOrange/20 object-cover">
                    <div class="hidden lg:block text-left">
                        <p class="font-bold text-sm leading-tight">Neha Sharma</p>
                        <p class="text-xs text-textMuted">Talent Acquisition Lead</p>
                    </div>
                </div>
            </div>
        </header>

        <!-- DASHBOARD CONTAINER -->
        <div class="flex-1 p-6 md:p-8 space-y-8 max-w-7xl w-full mx-auto">
            
            <!-- FAST CALL-TO-ACTION BAR -->
            <div class="bg-gradient-to-r from-brandOrange to-brandOrangeHover text-white p-6 rounded-2xl flex flex-col md:flex-row items-center justify-between gap-4 shadow-md">
                <div>
                    <h3 class="text-lg md:text-xl font-extrabold">Need to launch a new batch hire requirement?</h3>
                    <p class="text-sm text-brandOrangeLight/90 mt-1">Set up eligibility, locations, and aggregate percentage criteria instantly.</p>
                </div>
                <a href="job_post.jsp" class="bg-white hover:bg-brandOrangeLight text-brandOrange px-6 py-3 rounded-xl font-bold text-sm shadow-sm flex items-center gap-2 transition-all shrink-0">
                    <i class="fa-solid fa-circle-plus"></i>
                    Create Job Post
                </a>
            </div>

            <!-- DASHBOARD STATISTICS METRICS -->
            <section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                <!-- Stat Card 1 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Active Openings</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2">12</h3>
                        <p class="text-xs text-emerald-600 font-semibold mt-1"><i class="fa-solid fa-arrow-trend-up"></i> +2 Posted this week</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-orange-100 text-brandOrange flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-briefcase"></i>
                    </div>
                </div>

                <!-- Stat Card 2 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Total Candidates</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2" id="stat-total-candidates">248</h3>
                        <p class="text-xs text-emerald-600 font-semibold mt-1"><i class="fa-solid fa-arrow-trend-up"></i> +46 New applicants</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-blue-100 text-blue-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-user-graduate"></i>
                    </div>
                </div>

                <!-- Stat Card 3 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Interviews Scheduled</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2">18</h3>
                        <p class="text-xs text-amber-500 font-semibold mt-1"><i class="fa-solid fa-hourglass-half"></i> 5 Scheduled today</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-amber-100 text-amber-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-calendar-day"></i>
                    </div>
                </div>

                <!-- Stat Card 4 -->
                <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm hover:shadow-md transition-all flex items-center justify-between">
                    <div>
                        <p class="text-xs font-bold uppercase tracking-wider text-textLight">Shortlisted Candidates</p>
                        <h3 class="text-3xl font-extrabold text-textDark mt-2" id="stat-selected">34</h3>
                        <p class="text-xs text-brandOrange font-semibold mt-1"><i class="fa-solid fa-square-poll-vertical"></i> 15% conversion rate</p>
                    </div>
                    <div class="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-600 flex items-center justify-center text-xl shadow-inner">
                        <i class="fa-solid fa-circle-check"></i>
                    </div>
                </div>
            </section>

            <!-- MAIN SPLIT WORKSPACE -->
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                
                <!-- LEFT SECTION: ACTIVE JOBS & RECENT APPLICANTS -->
                <div class="lg:col-span-2 space-y-8">
                    
                    <!-- RECENT POSTED REQUIREMENTS LIST -->
                    <div class="bg-white border border-borderColor rounded-2xl shadow-sm overflow-hidden">
                        <div class="p-6 border-b border-borderColor flex items-center justify-between flex-wrap gap-2">
                            <div>
                                <h3 class="font-extrabold text-lg text-textDark">Recent Active Requirements</h3>
                                <p class="text-xs text-textMuted">Track application metrics for recently published requirements.</p>
                            </div>
                            <button onclick="window.location.href='post_job.jsp'" class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover border border-brandOrange/20 hover:border-brandOrange hover:bg-brandOrangeLight px-3 py-1.5 rounded-lg transition-all">
                                <i class="fa-solid fa-sliders"></i> Manage Jobs
                            </button>
                        </div>

                        <div class="overflow-x-auto">
                            <table class="w-full text-left border-collapse">
                                <thead>
                                    <tr class="bg-bgMain text-textMuted text-xs font-bold uppercase border-b border-borderColor">
                                        <th class="py-4 px-6">Requirement Details</th>
                                        <th class="py-4 px-6">Required Eligibility</th>
                                        <th class="py-4 px-6">Submissions</th>
                                        <th class="py-4 px-6">Status</th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-borderColor text-sm">
                                    <!-- Job Item 1 -->
                                    <tr class="hover:bg-bgMain/40 transition-colors">
                                        <td class="py-4 px-6">
                                            <div class="font-bold text-textDark">Associate Software Engineer - Java</div>
                                            <div class="text-xs text-textLight flex items-center gap-2 mt-1">
                                                <span><i class="fa-solid fa-location-dot"></i> Bangalore, IN</span>
                                                <span>•</span>
                                                <span>Full-Time</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="text-xs text-textMuted font-semibold">Min 60% Aggregate</div>
                                            <div class="text-[11px] text-brandOrange font-medium mt-0.5">BE/B.Tech, MCA • 2024, 2025</div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="flex items-center gap-2">
                                                <span class="font-extrabold text-textDark">84</span>
                                                <span class="text-xs text-emerald-500 font-semibold">(12 pending)</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <span class="px-2.5 py-1 text-[11px] font-bold bg-emerald-100 text-emerald-700 rounded-full">ACTIVE</span>
                                        </td>
                                    </tr>

                                    <!-- Job Item 2 -->
                                    <tr class="hover:bg-bgMain/40 transition-colors">
                                        <td class="py-4 px-6">
                                            <div class="font-bold text-textDark">QA Automation Engineer (Selenium)</div>
                                            <div class="text-xs text-textLight flex items-center gap-2 mt-1">
                                                <span><i class="fa-solid fa-location-dot"></i> Pune Office</span>
                                                <span>•</span>
                                                <span>Hybrid</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="text-xs text-textMuted font-semibold">No Bar Percentage</div>
                                            <div class="text-[11px] text-brandOrange font-medium mt-0.5">B.Tech, BCA, B.Sc • 2023, 2024</div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="flex items-center gap-2">
                                                <span class="font-extrabold text-textDark">56</span>
                                                <span class="text-xs text-emerald-500 font-semibold">(8 pending)</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <span class="px-2.5 py-1 text-[11px] font-bold bg-emerald-100 text-emerald-700 rounded-full">ACTIVE</span>
                                        </td>
                                    </tr>

                                    <!-- Job Item 3 -->
                                    <tr class="hover:bg-bgMain/40 transition-colors">
                                        <td class="py-4 px-6">
                                            <div class="font-bold text-textDark">SQL & Database Analyst</div>
                                            <div class="text-xs text-textLight flex items-center gap-2 mt-1">
                                                <span><i class="fa-solid fa-location-dot"></i> Noida Branch</span>
                                                <span>•</span>
                                                <span>Full-Time</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="text-xs text-textMuted font-semibold">Min 55% Aggregate</div>
                                            <div class="text-[11px] text-brandOrange font-medium mt-0.5">Any Graduate • 2024 YOP</div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <div class="flex items-center gap-2">
                                                <span class="font-extrabold text-textDark">19</span>
                                                <span class="text-xs text-textLight">(Processed)</span>
                                            </div>
                                        </td>
                                        <td class="py-4 px-6">
                                            <span class="px-2.5 py-1 text-[11px] font-bold bg-gray-200 text-gray-700 rounded-full">DRAFT</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- APPLICANT PIPELINE SCREENING -->
                    <div class="bg-white border border-borderColor rounded-2xl shadow-sm overflow-hidden" id="candidates-section">
                        <div class="p-6 border-b border-borderColor flex items-center justify-between flex-wrap gap-4">
                            <div>
                                <h3 class="font-extrabold text-lg text-textDark">Recent Candidate Submissions</h3>
                                <p class="text-xs text-textMuted">Evaluate qualifications, Year of Passing, and percentage aggregates against active roles.</p>
                            </div>
                            
                            <!-- Filter & Search Panel -->
                            <div class="flex items-center gap-3 w-full sm:w-auto">
                                <div class="relative flex-1 sm:w-60">
                                    <input type="text" id="candidateSearch" onkeyup="filterCandidates()" placeholder="Search candidates..." class="w-full pl-9 pr-4 py-2 border border-borderColor rounded-xl text-xs focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight">
                                    <span class="absolute left-3.5 top-1/2 -translate-y-1/2 text-textLight text-xs"><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </div>
                        </div>

                        <!-- Candidates List Container -->
                        <div class="p-6 divide-y divide-borderColor" id="candidate-list">
                            
                            <!-- Candidate Card 1 -->
                            <div class="candidate-card py-4 first:pt-0 last:pb-0 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 transition-all" data-name="Arjun Mehta" data-role="Java Developer" data-percentage="78" data-yop="2025" data-degree="B.E Computer Science">
                                <div class="flex items-start gap-4">
                                    <div class="w-12 h-12 rounded-xl bg-brandOrangeLight text-brandOrange font-bold flex items-center justify-center text-sm shadow-inner shrink-0 mt-1">
                                        AM
                                    </div>
                                    <div>
                                        <div class="flex items-center gap-2">
                                            <h4 class="font-bold text-textDark text-base hover:text-brandOrange cursor-pointer" onclick="openCandidateModal('Arjun Mehta', 'Java Developer', 'B.E (Computer Science)', '78%', '2025', 'Yes (2 Years)', '8.4 CGPA in Java module in Qspiders')">Arjun Mehta</h4>
                                            <span class="px-2 py-0.5 text-[10px] font-bold bg-brandOrangeLight text-brandOrange rounded-md">NEW</span>
                                        </div>
                                        <p class="text-xs text-textMuted font-medium mt-0.5">Applied For: <span class="text-textDark font-semibold">Associate Software Engineer - Java</span></p>
                                        
                                        <!-- Qualifications Chips -->
                                        <div class="flex flex-wrap gap-2 mt-2">
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> B.E CSE</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-award"></i> 78% Aggregate</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-calendar"></i> 2025 YOP</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="flex items-center gap-2 self-end sm:self-center w-full sm:w-auto justify-end">
                                    <button onclick="updateApplicantStatus(this, 'shortlist')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold bg-emerald-500 hover:bg-emerald-600 text-white rounded-xl shadow-sm transition-all">
                                        Shortlist
                                    </button>
                                    <button onclick="updateApplicantStatus(this, 'reject')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold border border-borderColor hover:bg-red-50 text-textMuted hover:text-red-500 rounded-xl transition-all">
                                        Reject
                                    </button>
                                </div>
                            </div>

                            <!-- Candidate Card 2 -->
                            <div class="candidate-card py-4 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 transition-all" data-name="Priya Sharma" data-role="QA Engineer" data-percentage="82" data-yop="2024" data-degree="MCA">
                                <div class="flex items-start gap-4">
                                    <div class="w-12 h-12 rounded-xl bg-blue-50 text-blue-500 font-bold flex items-center justify-center text-sm shadow-inner shrink-0 mt-1">
                                        PS
                                    </div>
                                    <div>
                                        <div class="flex items-center gap-2">
                                            <h4 class="font-bold text-textDark text-base hover:text-brandOrange cursor-pointer" onclick="openCandidateModal('Priya Sharma', 'QA Automation Engineer', 'MCA (Computer Applications)', '82%', '2024', 'No Bond', 'Trained in Selenium Webdriver, API Testing, Agile Methodology')">Priya Sharma</h4>
                                            <span class="px-2 py-0.5 text-[10px] font-bold bg-indigo-100 text-indigo-700 rounded-md">INTERVIEWING</span>
                                        </div>
                                        <p class="text-xs text-textMuted font-medium mt-0.5">Applied For: <span class="text-textDark font-semibold">QA Automation Engineer</span></p>
                                        
                                        <!-- Qualifications Chips -->
                                        <div class="flex flex-wrap gap-2 mt-2">
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> MCA</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-award"></i> 82% Aggregate</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-calendar"></i> 2024 YOP</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="flex items-center gap-2 self-end sm:self-center w-full sm:w-auto justify-end">
                                    <button onclick="updateApplicantStatus(this, 'shortlist')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold bg-emerald-500 hover:bg-emerald-600 text-white rounded-xl shadow-sm transition-all">
                                        Shortlist
                                    </button>
                                    <button onclick="updateApplicantStatus(this, 'reject')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold border border-borderColor hover:bg-red-50 text-textMuted hover:text-red-500 rounded-xl transition-all">
                                        Reject
                                    </button>
                                </div>
                            </div>

                            <!-- Candidate Card 3 -->
                            <div class="candidate-card py-4 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 transition-all" data-name="Rohan Das" data-role="SQL Analyst" data-percentage="61" data-yop="2025" data-degree="B.Sc IT">
                                <div class="flex items-start gap-4">
                                    <div class="w-12 h-12 rounded-xl bg-amber-50 text-amber-500 font-bold flex items-center justify-center text-sm shadow-inner shrink-0 mt-1">
                                        RD
                                    </div>
                                    <div>
                                        <div class="flex items-center gap-2">
                                            <h4 class="font-bold text-textDark text-base hover:text-brandOrange cursor-pointer" onclick="openCandidateModal('Rohan Das', 'SQL Analyst', 'B.Sc (Information Technology)', '61%', '2025', 'Yes (1 Year)', 'Skilled in writing Complex SQL queries, Subqueries, Normalization, and PL/SQL basics')">Rohan Das</h4>
                                        </div>
                                        <p class="text-xs text-textMuted font-medium mt-0.5">Applied For: <span class="text-textDark font-semibold">SQL & Database Analyst</span></p>
                                        
                                        <!-- Qualifications Chips -->
                                        <div class="flex flex-wrap gap-2 mt-2">
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-graduation-cap"></i> B.Sc IT</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-award"></i> 61% Aggregate</span>
                                            <span class="bg-bgMain text-textMuted text-[10px] font-bold px-2 py-1 rounded border border-borderColor"><i class="fa-solid fa-calendar"></i> 2025 YOP</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="flex items-center gap-2 self-end sm:self-center w-full sm:w-auto justify-end">
                                    <button onclick="updateApplicantStatus(this, 'shortlist')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold bg-emerald-500 hover:bg-emerald-600 text-white rounded-xl shadow-sm transition-all">
                                        Shortlist
                                    </button>
                                    <button onclick="updateApplicantStatus(this, 'reject')" class="flex-1 sm:flex-initial px-4 py-2 text-xs font-bold border border-borderColor hover:bg-red-50 text-textMuted hover:text-red-500 rounded-xl transition-all">
                                        Reject
                                    </button>
                                </div>
                            </div>
                            
                            <!-- No Results Notification Area -->
                            <div id="noCandidatesMessage" class="hidden text-center py-8 text-textMuted">
                                <i class="fa-regular fa-folder-open text-4xl mb-3 block text-textLight"></i>
                                No candidates matched your search criteria.
                            </div>
                        </div>
                    </div>
                </div>

                <!-- RIGHT SECTION: SCHEDULE & PIPELINE PERFORMANCE -->
                <div class="space-y-8">
                    
                    <!-- UPCOMING INTERVIEWS TRACKER -->
                    <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm">
                        <div class="flex items-center justify-between mb-6">
                            <h3 class="font-extrabold text-lg text-textDark">Upcoming Interviews</h3>
                            <span class="bg-amber-100 text-amber-700 px-2 py-1 text-[10px] font-bold rounded-md">TODAY</span>
                        </div>

                        <!-- Schedule Stream -->
                        <div class="space-y-4">
                            <!-- Interview Item 1 -->
                            <div class="flex items-start gap-4 p-3 hover:bg-bgMain rounded-xl transition-all">
                                <div class="bg-brandOrangeLight text-brandOrange font-bold rounded-lg p-2 flex flex-col items-center justify-center min-w-[50px] shadow-sm">
                                    <span class="text-xs">3:30</span>
                                    <span class="text-[10px] font-medium uppercase">PM</span>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-sm text-textDark truncate">Sumit Kumar</h4>
                                    <p class="text-xs text-textMuted">Java Round 1 Technical</p>
                                    <div class="flex items-center gap-1.5 text-xs text-brandOrange font-semibold mt-1">
                                        <i class="fa-solid fa-video"></i> Join Meet
                                    </div>
                                </div>
                            </div>

                            <!-- Interview Item 2 -->
                            <div class="flex items-start gap-4 p-3 hover:bg-bgMain rounded-xl transition-all">
                                <div class="bg-brandOrangeLight text-brandOrange font-bold rounded-lg p-2 flex flex-col items-center justify-center min-w-[50px] shadow-sm">
                                    <span class="text-xs">5:00</span>
                                    <span class="text-[10px] font-medium uppercase">PM</span>
                                </div>
                                <div class="min-w-0 flex-1">
                                    <h4 class="font-bold text-sm text-textDark truncate">Ananya S.</h4>
                                    <p class="text-xs text-textMuted">Database SQL Evaluation</p>
                                    <div class="flex items-center gap-1.5 text-xs text-brandOrange font-semibold mt-1">
                                        <i class="fa-solid fa-video"></i> Join Meet
                                    </div>
                                </div>
                            </div>
                        </div>

                        <button class="w-full text-center text-xs font-bold text-brandOrange bg-brandOrangeLight/50 hover:bg-brandOrangeLight py-3 rounded-xl transition-all mt-4 border border-brandOrange/10">
                            See Complete Schedule
                        </button>
                    </div>

                    <!-- BATCH SCREENING PIPELINE METRICS (PURE CSS VISUALIZATION) -->
                    <div class="bg-white border border-borderColor p-6 rounded-2xl shadow-sm">
                        <h3 class="font-extrabold text-lg text-textDark mb-4">Screening Pipeline Analytics</h3>
                        <p class="text-xs text-textMuted mb-6">Aggregate pass rates from Qspiders training institutes to matching recruitment orders.</p>

                        <div class="space-y-4">
                            <!-- Progress Block 1 -->
                            <div>
                                <div class="flex justify-between text-xs font-bold mb-1.5">
                                    <span class="text-textDark">Resume Validation Passed</span>
                                    <span class="text-brandOrange">84%</span>
                                </div>
                                <div class="w-full h-2.5 bg-bgMain rounded-full overflow-hidden border border-borderColor">
                                    <div class="h-full bg-brandOrange rounded-full transition-all duration-1000" style="width: 84%;"></div>
                                </div>
                            </div>

                            <!-- Progress Block 2 -->
                            <div>
                                <div class="flex justify-between text-xs font-bold mb-1.5">
                                    <span class="text-textDark">Tech Pre-assessment Passed</span>
                                    <span class="text-brandOrange">62%</span>
                                </div>
                                <div class="w-full h-2.5 bg-bgMain rounded-full overflow-hidden border border-borderColor">
                                    <div class="h-full bg-brandOrange rounded-full transition-all duration-1000" style="width: 62%;"></div>
                                </div>
                            </div>

                            <!-- Progress Block 3 -->
                            <div>
                                <div class="flex justify-between text-xs font-bold mb-1.5">
                                    <span class="text-textDark">Aptitude Clearance Level</span>
                                    <span class="text-brandOrange">48%</span>
                                </div>
                                <div class="w-full h-2.5 bg-bgMain rounded-full overflow-hidden border border-borderColor">
                                    <div class="h-full bg-brandOrange rounded-full transition-all duration-1000" style="width: 48%;"></div>
                                </div>
                            </div>
                        </div>

                        <!-- Info Note -->
                        <div class="bg-emerald-50 text-emerald-800 text-xs p-4 rounded-xl border border-emerald-100 mt-6 flex items-start gap-3">
                            <span class="text-lg text-emerald-600 mt-0.5"><i class="fa-solid fa-circle-check"></i></span>
                            <p class="leading-relaxed"><strong>Optimized:</strong> Setting a 60% aggregate qualification on requirements filters out 38% ineligible resumes automatically.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <footer class="bg-white border-t border-borderColor py-6 px-8 text-center text-xs text-textMuted mt-auto flex flex-col sm:flex-row items-center justify-between gap-4">
            <p>&copy; 2026 Qspiders Job Portal. Internal Employer Board Panel. All rights reserved.</p>
            <div class="flex gap-4">
                <a href="#" class="hover:text-brandOrange transition-colors">Privacy Policy</a>
                <span>•</span>
                <a href="#" class="hover:text-brandOrange transition-colors">Terms of Recruitment</a>
            </div>
        </footer>
    </main>

    <!-- INTERACTIVE CANDIDATE DETAIL MODAL -->
    <div id="candidateModal" class="fixed inset-0 bg-textDark/50 backdrop-blur-sm z-50 flex items-center justify-center p-4 hidden">
        <div class="bg-white rounded-2xl w-full max-w-lg overflow-hidden shadow-2xl border border-borderColor transition-all scale-95 opacity-0 transform" id="modalContent">
            <!-- Modal Header -->
            <div class="p-6 border-b border-borderColor flex items-center justify-between bg-gradient-to-r from-white to-brandOrangeLight/30">
                <div class="flex items-center gap-3">
                    <div class="w-10 h-10 rounded-xl bg-brandOrange text-white font-bold flex items-center justify-center shadow-md" id="modalInitials">
                        AM
                    </div>
                    <div>
                        <h3 class="font-extrabold text-lg text-textDark" id="modalName">Arjun Mehta</h3>
                        <p class="text-xs text-textMuted" id="modalRole">Applied for Java Developer</p>
                    </div>
                </div>
                <button onclick="closeCandidateModal()" class="w-8 h-8 rounded-full hover:bg-bgMain text-textMuted hover:text-textDark flex items-center justify-center transition-all">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>

            <!-- Modal Body -->
            <div class="p-6 space-y-5">
                <div class="grid grid-cols-2 gap-4">
                    <div class="bg-bgMain p-3.5 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase tracking-wider block">Qualification</span>
                        <span class="font-bold text-sm text-textDark mt-1 block" id="modalDegree">B.E (Computer Science)</span>
                    </div>
                    <div class="bg-bgMain p-3.5 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase tracking-wider block">Aggregate Score</span>
                        <span class="font-bold text-sm text-textDark mt-1 block" id="modalPercentage">78%</span>
                    </div>
                    <div class="bg-bgMain p-3.5 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase tracking-wider block">Year of Passing</span>
                        <span class="font-bold text-sm text-textDark mt-1 block" id="modalYOP">2025</span>
                    </div>
                    <div class="bg-bgMain p-3.5 rounded-xl border border-borderColor">
                        <span class="text-textLight text-[10px] font-bold uppercase tracking-wider block">Agreement/Bond</span>
                        <span class="font-bold text-sm text-textDark mt-1 block" id="modalBond">Yes (2 Years)</span>
                    </div>
                </div>

                <div class="space-y-1.5">
                    <label class="text-xs font-bold text-textMuted">Trained Evaluation Summary (Qspiders Assessment)</label>
                    <div class="p-4 bg-orange-50/50 text-textDark text-xs rounded-xl border border-orange-100 leading-relaxed font-medium" id="modalAssessment">
                        Passed with 8.4 CGPA in Java Modules. Capable of handling OOPs, Hibernate Framework patterns, Spring Core constructs, and relational schema maps.
                    </div>
                </div>

                <div class="p-3.5 bg-bgMain border border-borderColor rounded-xl flex items-center justify-between">
                    <div class="flex items-center gap-3">
                        <span class="text-2xl text-red-500"><i class="fa-solid fa-file-pdf"></i></span>
                        <div>
                            <span class="font-bold text-xs text-textDark block">Curriculum_Vitae_Official.pdf</span>
                            <span class="text-[10px] text-textLight">Verified Qspiders Resume Standard</span>
                        </div>
                    </div>
                    <button class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover flex items-center gap-1.5 bg-white border border-borderColor hover:border-brandOrange px-3 py-1.5 rounded-lg transition-all shadow-sm">
                        <i class="fa-solid fa-download"></i> Download
                    </button>
                </div>
            </div>

            <!-- Modal Footer -->
            <div class="p-6 bg-bgMain border-t border-borderColor flex items-center justify-end gap-3">
                <button onclick="performModalAction('reject')" class="px-5 py-2.5 text-xs font-bold border border-borderColor hover:bg-red-50 text-textMuted hover:text-red-500 rounded-xl transition-all">
                    Reject Profile
                </button>
                <button onclick="performModalAction('shortlist')" class="px-5 py-2.5 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all">
                    Shortlist Candidate
                </button>
            </div>
        </div>
    </div>

    <!-- NOTIFICATION SNACKBAR TOASTER FOR PREMIUM RECRUITER FEEDBACK -->
    <div id="toastNotification" class="fixed bottom-6 right-6 z-50 bg-textDark text-white px-5 py-3 rounded-xl shadow-2xl flex items-center gap-3 transition-all duration-300 transform translate-y-20 opacity-0">
        <span class="text-brandOrange text-lg" id="toastIcon"><i class="fa-solid fa-circle-check"></i></span>
        <p class="text-xs font-bold" id="toastMessage">Candidate shortlisted successfully!</p>
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

        // Active screening list filter configurations
        function filterCandidates() {
            const searchInput = document.getElementById('candidateSearch').value.toLowerCase();
            const cards = document.querySelectorAll('.candidate-card');
            let matchedAny = false;

            cards.forEach(card => {
                const name = card.getAttribute('data-name').toLowerCase();
                const role = card.getAttribute('data-role').toLowerCase();
                const degree = card.getAttribute('data-degree').toLowerCase();
                
                if (name.includes(searchInput) || role.includes(searchInput) || degree.includes(searchInput)) {
                    card.style.display = 'flex';
                    matchedAny = true;
                } else {
                    card.style.display = 'none';
                }
            });

            const msgBox = document.getElementById('noCandidatesMessage');
            if (matchedAny) {
                msgBox.classList.add('hidden');
            } else {
                msgBox.classList.remove('hidden');
            }
        }

        // Live Action: Shortlist or Reject directly from list
        let activeActionCandidateCard = null;

        function updateApplicantStatus(buttonElement, status) {
            const card = buttonElement.closest('.candidate-card');
            const candidateName = card.getAttribute('data-name');
            processApplicantState(card, candidateName, status);
        }

        function processApplicantState(cardElement, name, status) {
            // Smoothly collapse and remove the card
            cardElement.style.opacity = '0';
            cardElement.style.transform = 'scale(0.95)';
            
            setTimeout(() => {
                cardElement.remove();
                
                // Update total candidate count
                const countElem = document.getElementById('stat-total-candidates');
                let count = parseInt(countElem.innerText);
                if (count > 0) countElem.innerText = count - 1;

                if (status === 'shortlist') {
                    // Update shortlisted count
                    const selElem = document.getElementById('stat-selected');
                    selElem.innerText = parseInt(selElem.innerText) + 1;
                    triggerToast(`Successfully Shortlisted: ${name}`, 'success');
                } else {
                    triggerToast(`Rejected submission of: ${name}`, 'reject');
                }

                // Check if all cards are gone
                const remainingCards = document.querySelectorAll('.candidate-card');
                if (remainingCards.length === 0) {
                    document.getElementById('noCandidatesMessage').classList.remove('hidden');
                }
            }, 300);
        }

        // Toast feedback handler
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

        // Candidate Detail Modal View Controllers
        function openCandidateModal(name, role, degree, aggregate, yop, bond, assessment) {
            document.getElementById('modalName').innerText = name;
            document.getElementById('modalInitials').innerText = name.split(' ').map(n => n[0]).join('');
            document.getElementById('modalRole').innerText = `Applied for: ${role}`;
            document.getElementById('modalDegree').innerText = degree;
            document.getElementById('modalPercentage').innerText = aggregate;
            document.getElementById('modalYOP').innerText = yop;
            document.getElementById('modalBond').innerText = bond;
            document.getElementById('modalAssessment').innerText = assessment;

            // Save reference to active card for actions inside the modal
            const cards = document.querySelectorAll('.candidate-card');
            activeActionCandidateCard = Array.from(cards).find(c => c.getAttribute('data-name') === name) || null;

            const modal = document.getElementById('candidateModal');
            const content = document.getElementById('modalContent');
            
            modal.classList.remove('hidden');
            setTimeout(() => {
                content.classList.remove('scale-95', 'opacity-0');
                content.classList.add('scale-100', 'opacity-100');
            }, 50);
        }

        function closeCandidateModal() {
            const modal = document.getElementById('candidateModal');
            const content = document.getElementById('modalContent');

            content.classList.remove('scale-100', 'opacity-100');
            content.classList.add('scale-95', 'opacity-0');
            
            setTimeout(() => {
                modal.classList.add('hidden');
                activeActionCandidateCard = null;
            }, 250);
        }

        function performModalAction(status) {
            if (activeActionCandidateCard) {
                const name = activeActionCandidateCard.getAttribute('data-name');
                processApplicantState(activeActionCandidateCard, name, status);
            }
            closeCandidateModal();
        }

        // Basic switch tabs mock
        function switchTab(tab) {
            triggerToast(`Navigating to detailed ${tab} workspace...`, 'success');
        }
    </script>
</body>
</html>