<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Registration | Qspiders Portal</title>
    
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
    
    <!-- FontAwesome for Corporate Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Clean custom scrollbar */
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
        .step-transition {
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }
    </style>
</head>
<body class="bg-bgMain text-textDark min-h-screen flex items-center justify-center p-0 md:p-6 overflow-x-hidden">

    <!-- MAIN SPLIT WRAPPER -->
    <div class="bg-white rounded-none md:rounded-3xl shadow-2xl border-0 md:border border-borderColor w-full max-w-6xl min-h-screen md:min-h-[80vh] flex flex-col lg:flex-row overflow-hidden">
        
        <!-- LEFT SIDE: CORPORATE BRANDING BANNER -->
        <div class="lg:w-5/12 bg-gradient-to-br from-brandOrange to-brandOrangeHover text-white p-8 md:p-12 flex flex-col justify-between relative overflow-hidden shrink-0">
            <!-- Background Decorative Accents -->
            <div class="absolute -top-10 -left-10 w-40 h-40 bg-white/10 rounded-full blur-2xl"></div>
            <div class="absolute -bottom-20 -right-20 w-80 h-80 bg-orange-300/20 rounded-full blur-3xl"></div>

            <!-- Header logo linking back to home -->
            <div class="z-10">
                <a href="index.jsp" class="flex items-center gap-2 font-extrabold text-2xl tracking-tight">
                    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 2L2 7L12 12L22 7L12 2Z" fill="#ffffff"/>
                        <path d="M2 17L12 22L22 17" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M2 12L12 17L22 12" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    Qspiders<span class="text-orange-200">.</span>
                </a>
            </div>

            <!-- Corporate messaging block -->
            <div class="my-12 space-y-8 z-10">
                <div>
                    <span class="bg-white/20 text-white text-[11px] font-bold tracking-widest uppercase px-3 py-1 rounded-full">For Employers</span>
                    <h2 class="text-3xl md:text-4xl font-extrabold tracking-tight mt-3 leading-tight">Empower Your Engineering Hiring.</h2>
                    <p class="text-sm text-brandOrangeLight/90 mt-2 leading-relaxed">Join 500+ leading global technology businesses sourcing the top 1% pre-assessed candidates trained directly by Qspiders academies.</p>
                </div>

                <!-- Strategic perks list -->
                <div class="space-y-4">
                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-bolt"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Post Instantly, Hire Rapidly</h4>
                            <p class="text-xs text-brandOrangeLight/80">Configure robust eligibility rules, minimum aggregate parameters, and target batches.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-circle-check"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Pre-Verified Credentials</h4>
                            <p class="text-xs text-brandOrangeLight/80">Access candidate profiles pre-screened for core technical frameworks and aggregate criteria.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-chart-line"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Integrated Recruitment Funnel</h4>
                            <p class="text-xs text-brandOrangeLight/80">Filter applicants, coordinate interviews, track aggregate pipelines, and sign off matches.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer copyright alignment -->
            <div class="z-10 text-xs text-brandOrangeLight/70 flex items-center justify-between border-t border-white/10 pt-4">
                <span>&copy; 2026 Qspiders Job Portal</span>
                <div class="flex gap-3">
                    <a href="#" class="hover:underline">Privacy</a>
                    <span>•</span>
                    <a href="#" class="hover:underline">Terms</a>
                </div>
            </div>
        </div>

        <!-- RIGHT SIDE: MULTI-STEP REGISTRATION PANELS -->
        <div class="flex-1 p-8 md:p-12 flex flex-col justify-between">
            
            <!-- TOP STEP NAVIGATION AND ACTION LINKS -->
            <div class="flex items-center justify-between border-b border-borderColor pb-6">
                <div>
                    <h3 class="font-extrabold text-xl text-textDark">Create Corporate Account</h3>
                    <p class="text-xs text-textMuted mt-0.5">Register your business profile to source candidates.</p>
                </div>
                <!-- Redirect to login -->
                <div class="text-right">
                    <span class="text-xs text-textMuted block">Already registered?</span>
                    <a href="employee_login.jsp" class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover hover:underline">Employer Login <i class="fa-solid fa-arrow-right-to-bracket ml-0.5"></i></a>
                </div>
            </div>

            <!-- DYNAMIC SIGNUP REGISTRATION FORM -->
            <div class="flex-1 overflow-y-auto pr-2 mt-6 custom-scrollbar">
                <form action="save_employeer" method="POST" id="signupForm" class="flex flex-col space-y-8 max-w-xl w-full mx-auto pb-6" onsubmit="handleFinalSubmit(event)">
                    
                    <!-- SECTION 1: PERSONAL ACCOUNT DETAILS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-circle-user mr-1"></i> Contact Information</h4>
                            <p class="text-xs text-textMuted">Let candidates know who is coordinating this requirement.</p>
                        </div>

                        <div class="form-group">
                            <label for="fullName">Full Name <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-regular fa-user"></i></span>
                                <input type="text" id="fullName" name="fullName" placeholder="e.g. Neha Sharma" class="pl-9 pr-4 py-2.5" required>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label for="designation">Work Designation <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-id-badge"></i></span>
                                    <input type="text" id="designation" name="designation" placeholder="e.g. Lead HR Partner" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="contactNo">Contact Number <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-phone"></i></span>
                                    <input type="tel" id="contactNo" name="contactNo" placeholder="e.g. +91 98765 43210" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="workEmail">Work Email Address <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-regular fa-envelope"></i></span>
                                <input type="email" id="workEmail" name="workEmail" placeholder="e.g. hr@wipro.com" class="pl-9 pr-4 py-2.5" required>
                            </div>
                            <span class="text-[10px] text-textMuted mt-1 block"><i class="fa-solid fa-circle-info mr-1"></i> Public domain emails (Gmail, Yahoo) are restricted. Please provide your business domain.</span>
                        </div>
                    </div>

                    <!-- SECTION 2: CORPORATE DETAILS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-building mr-1"></i> Company Profile</h4>
                            <p class="text-xs text-textMuted">Let prospective candidates learn more about your business ecosystem.</p>
                        </div>

                        <div class="form-group">
                            <label for="companyName">Registered Company Name <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-briefcase"></i></span>
                                <input type="text" id="companyName" name="companyName" placeholder="e.g. Wipro Technologies" class="pl-9 pr-4 py-2.5" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="companyWebsite">Corporate Website <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-globe"></i></span>
                                <input type="url" id="companyWebsite" name="companyWebsite" placeholder="e.g. https://www.wipro.com" class="pl-9 pr-4 py-2.5" required>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label for="companySize">Company Scale / Size <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-users"></i></span>
                                    <select id="companySize" name="companySize" class="pl-9 pr-4 py-2.5 bg-white border border-borderColor rounded-xl text-xs w-full focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight" required>
                                        <option value="" disabled selected>Select headcount scale</option>
                                        <option value="1-50">1 - 50 Employees (Startup)</option>
                                        <option value="51-200">51 - 200 Employees (SMB)</option>
                                        <option value="201-1000">201 - 1,000 Employees (Mid-size)</option>
                                        <option value="1000+">1,000+ Employees (Enterprise / MNC)</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="industrySector">Industry Sector <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-layer-group"></i></span>
                                    <select id="industrySector" name="industrySector" class="pl-9 pr-4 py-2.5 bg-white border border-borderColor rounded-xl text-xs w-full focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight" required>
                                        <option value="" disabled selected>Select operations industry</option>
                                        <option value="IT Services">Information Technology Services</option>
                                        <option value="SaaS/Product">SaaS & Product Development</option>
                                        <option value="Fintech">Financial Technology (Fintech)</option>
                                        <option value="EdTech">Educational Technology (EdTech)</option>
                                        <option value="Consulting">Strategic Management Consulting</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- SECTION 3: SECURITY CREDENTIALS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-shield-halved mr-1"></i> Account Security</h4>
                            <p class="text-xs text-textMuted">Establish secure login passwords matching standard IT complexity norms.</p>
                        </div>

                        <div class="form-group">
                            <label for="password">Create Secure Password <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" id="password" name="password" placeholder="Min 8 characters, numbers, & symbols" class="pl-9 pr-4 py-2.5" required>
                                <button type="button" onclick="togglePasswordVisibility('password')" class="absolute right-3 top-1/2 -translate-y-1/2 text-textLight hover:text-brandOrange text-xs font-bold">
                                    SHOW
                                </button>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm secure password credentials" class="pl-9 pr-4 py-2.5" required>
                                <button type="button" onclick="togglePasswordVisibility('confirmPassword')" class="absolute right-3 top-1/2 -translate-y-1/2 text-textLight hover:text-brandOrange text-xs font-bold">
                                    SHOW
                                </button>
                            </div>
                        </div>

                        <!-- Custom checkbox terms agreement layout -->
                        <div class="p-3 bg-brandOrangeLight/40 rounded-xl border border-brandOrange/10 mt-3">
                            <label class="flex items-start gap-2.5 cursor-pointer select-none">
                                <input type="checkbox" id="termsCheck" name="termsCheck" class="mt-1 w-4 h-4 accent-brandOrange shrink-0">
                                <span class="text-[11px] text-textMuted leading-normal">I hereby declare that I possess standard hiring authorization. I agree to Qspiders' <a href="#" class="text-brandOrange font-bold hover:underline">Hiring Policy Guidelines</a> and service bond provisions.</span>
                            </label>
                        </div>
                    </div>

                    <style>
                        .form-group {
                            display: flex;
                            flex-direction: column;
                        }
                        .form-group label {
                            font-size: 0.75rem;
                            font-weight: 700;
                            color: var(--textDark);
                        }
                        .form-group label span {
                            color: var(--brandOrange);
                        }
                        input, select {
                            width: 100%;
                            border: 1.5px solid var(--borderColor);
                            border-radius: 12px;
                            font-family: inherit;
                            font-size: 0.8rem;
                            font-weight: 500;
                            color: var(--textDark);
                            background-color: #ffffff;
                            transition: all 0.3s ease;
                        }
                        input::placeholder {
                            color: var(--textLight);
                        }
                        input:focus, select:focus {
                            outline: none;
                            border-color: var(--brandOrange);
                            box-shadow: 0 0 0 4px rgba(255, 110, 49, 0.1);
                        }
                        /* custom scrollbar for the form area */
                        .custom-scrollbar::-webkit-scrollbar {
                            width: 4px;
                        }
                        .custom-scrollbar::-webkit-scrollbar-track {
                            background: transparent;
                        }
                        .custom-scrollbar::-webkit-scrollbar-thumb {
                            background: var(--borderColor);
                            border-radius: 4px;
                        }
                        .custom-scrollbar:hover::-webkit-scrollbar-thumb {
                            background: var(--textLight);
                        }
                    </style>

                    <!-- DYNAMIC INTERACTION BUTTON PANELS -->
                    <div class="pt-6 mt-2">
                        <!-- Final Signup Submit Button -->
                        <button type="submit" id="submitBtn" class="w-full px-6 py-3.5 text-sm font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all">
                            Register Account <i class="fa-solid fa-user-plus ml-1"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- SUCCESS CONFIRMATION POPUP MODAL -->
    <div id="successOverlay" class="fixed inset-0 bg-textDark/60 backdrop-blur-sm z-50 flex items-center justify-center p-4 hidden">
        <div class="bg-white rounded-3xl w-full max-w-md overflow-hidden shadow-2xl border border-borderColor transition-all scale-95 opacity-0 transform" id="modalContent">
            
            <div class="p-8 text-center space-y-6">
                <!-- Verified animated check circle icon -->
                <div class="w-16 h-16 rounded-full bg-emerald-100 text-emerald-500 text-3xl flex items-center justify-center mx-auto shadow-inner">
                    <i class="fa-solid fa-circle-check animate-bounce"></i>
                </div>

                <div class="space-y-2">
                    <h3 class="font-extrabold text-2xl text-textDark">Corporate Registered!</h3>
                    <p class="text-sm text-textMuted leading-relaxed">Your corporate employer identity profile is successfully verified under <strong id="successCompany" class="text-textDark">Wipro Technologies</strong> database credentials.</p>
                </div>

                <div class="p-4 bg-orange-50/50 rounded-2xl border border-orange-100/50 text-left space-y-2">
                    <div class="flex items-center gap-2 text-xs font-bold text-brandOrange">
                        <i class="fa-solid fa-unlock-keyhole"></i> Account Activated
                    </div>
                    <p class="text-[11px] text-textMuted leading-relaxed">You can now proceed directly to publish standard candidate eligibility requirements, design test aggregates, and explore verified applicant resumes.</p>
                </div>

                <!-- CTA buttons linking directly to standard dashboards -->
                <div class="grid grid-cols-1 gap-3 pt-2">
                    <button onclick="window.location.href='post_job.jsp'" class="w-full px-5 py-3 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all flex items-center justify-center gap-2">
                        <i class="fa-solid fa-circle-plus"></i> Post Your First Job
                    </button>
                    <button onclick="window.location.href='employer_dashboard.jsp'" class="w-full px-5 py-3 text-xs font-bold bg-gray-100 hover:bg-gray-200 text-textDark rounded-xl transition-all">
                        Go to Employer Dashboard
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- TOAST ALERT PANEL -->
    <div id="toastNotification" class="fixed bottom-6 right-6 z-50 bg-textDark text-white px-5 py-3 rounded-xl shadow-2xl flex items-center gap-3 transition-all duration-300 transform translate-y-20 opacity-0">
        <span class="text-brandOrange text-sm" id="toastIcon"><i class="fa-solid fa-circle-check"></i></span>
        <p class="text-xs font-bold" id="toastMessage">Verification checks updated!</p>
    </div>

    <!-- JAVASCRIPT REGISTRATION FORM WORKFLOW -->
    <script>
        // Helper password visibility toggle controller
        function togglePasswordVisibility(fieldId) {
            const field = document.getElementById(fieldId);
            const trigger = field.nextElementSibling;
            if (field.type === 'password') {
                field.type = 'text';
                trigger.innerText = 'HIDE';
            } else {
                field.type = 'password';
                trigger.innerText = 'SHOW';
            }
        }

        // Final registration verification processor
        function handleFinalSubmit(event) {
            event.preventDefault();

            // Contact Checks
            const email = document.getElementById('workEmail').value.trim();
            const emailDomain = email.split('@')[1];
            const publicDomains = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com", "rediffmail.com"];
            
            if (emailDomain && publicDomains.includes(emailDomain.toLowerCase())) {
                triggerToast("Personal domains restricted! Use work email domain.", "warning");
                return;
            }

            // Security Checks
            const password = document.getElementById('password').value;
            const confirm = document.getElementById('confirmPassword').value;
            const terms = document.getElementById('termsCheck').checked;

            if (password.length < 8) {
                triggerToast("Password must contain at least 8 characters.", "warning");
                return;
            }

            if (password !== confirm) {
                triggerToast("Passwords do not match. Re-verify inputs.", "warning");
                return;
            }

            if (!terms) {
                triggerToast("Please accept standard Qspiders corporate terms.", "warning");
                return;
            }

            // Save visual status loading animation
            const submitBtn = document.getElementById('submitBtn');
            submitBtn.innerHTML = '<i class="fa-solid fa-circle-notch animate-spin mr-1"></i> Saving Profile...';
            submitBtn.disabled = true;

            // Fire corporate activation pop-up modal momentarily so they see success, then submit
            const companyName = document.getElementById('companyName').value || "Your Company";
            document.getElementById('successCompany').innerText = companyName;

            const modal = document.getElementById('successOverlay');
            const content = document.getElementById('modalContent');
            
            modal.classList.remove('hidden');
            setTimeout(() => {
                content.classList.remove('scale-95', 'opacity-0');
                content.classList.add('scale-100', 'opacity-100');
            }, 50);

            // Submit the form to "save_employer.jsp" after a short 1.5-second delay so the database can process it
            setTimeout(() => {
                document.getElementById('signupForm').submit();
            }, 1500);
        }

        // Pop-up Toast system notifier
        function triggerToast(message, type) {
            const toast = document.getElementById('toastNotification');
            const toastMsg = document.getElementById('toastMessage');
            const toastIcon = document.getElementById('toastIcon');

            toastMsg.innerText = message;
            if (type === 'warning') {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-exclamation text-brandOrange"></i>';
            } else {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-check text-emerald-400"></i>';
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