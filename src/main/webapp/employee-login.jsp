<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Login | Qspiders Portal</title>
    
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
    </style>
</head>
<body class="bg-bgMain text-textDark min-h-screen flex items-center justify-center p-0 md:p-6 overflow-x-hidden">

    <!-- MAIN SPLIT WRAPPER -->
    <div class="bg-white rounded-none md:rounded-3xl shadow-2xl border-0 md:border border-borderColor w-full max-w-5xl min-h-screen md:min-h-[75vh] flex flex-col lg:flex-row overflow-hidden">
        
        <!-- LEFT SIDE: CORPORATE BRANDING BANNER (Hidden on mobile for seamless focus) -->
        <div class="hidden lg:flex lg:w-5/12 bg-gradient-to-br from-brandOrange to-brandOrangeHover text-white p-12 flex-col justify-between relative overflow-hidden shrink-0">
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
            <div class="my-auto space-y-8 z-10">
                <div>
                    <span class="bg-white/20 text-white text-[11px] font-bold tracking-widest uppercase px-3 py-1 rounded-full">Recruitment Gateway</span>
                    <h2 class="text-3xl font-extrabold tracking-tight mt-4 leading-tight">Welcome Back, Recruiter!</h2>
                    <p class="text-sm text-brandOrangeLight/90 mt-2 leading-relaxed">Connect back to your corporate workspace and resume sourcing the top 1% pre-assessed engineering talent instantly.</p>
                </div>

                <!-- Strategic stats list -->
                <div class="space-y-4 pt-4 border-t border-white/10">
                    <div class="flex items-center gap-4">
                        <span class="text-2xl font-black text-orange-200">2M+</span>
                        <p class="text-xs text-brandOrangeLight/80">Pre-screened engineering alumni database</p>
                    </div>
                    <div class="flex items-center gap-4">
                        <span class="text-2xl font-black text-orange-200">3 Days</span>
                        <p class="text-xs text-brandOrangeLight/80">Average industry-best turn-around time to hire</p>
                    </div>
                    <div class="flex items-center gap-4">
                        <span class="text-2xl font-black text-orange-200">500+</span>
                        <p class="text-xs text-brandOrangeLight/80">Global product and service tech companies active</p>
                    </div>
                </div>
            </div>

            <!-- Footer copyright alignment -->
            <div class="z-10 text-xs text-brandOrangeLight/70 flex items-center justify-between border-t border-white/10 pt-4">
                <span>&copy; 2026 Qspiders Portal</span>
                <div class="flex gap-3">
                    <a href="#" class="hover:underline">Support</a>
                    <span>•</span>
                    <a href="#" class="hover:underline">Hiring Terms</a>
                </div>
            </div>
        </div>

        <!-- RIGHT SIDE: LOGIN PANEL -->
        <div class="flex-1 p-8 md:p-12 flex flex-col justify-between bg-white">
            
            <!-- TOP NAVIGATION AND BACK BUTTON -->
            <div class="flex items-center justify-between border-b border-borderColor pb-6">
                <div>
                    <h3 class="font-extrabold text-xl text-textDark">Employer Access</h3>
                    <p class="text-xs text-textMuted mt-0.5">Welcome back to your corporate dashboard.</p>
                </div>
                <a href="employer_home.jsp" class="text-xs font-semibold text-textMuted hover:text-brandOrange transition-all flex items-center gap-1">
                    <i class="fa-solid fa-arrow-left"></i> Home Page
                </a>
            </div>

            <!-- DYNAMIC LOGIN FORM -->
            <div class="my-auto py-8 max-w-md w-full mx-auto space-y-6">
                
                <div class="space-y-1.5">
                    <h4 class="text-2xl font-extrabold text-textDark tracking-tight">Account Login</h4>
                    <p class="text-xs text-textMuted">Provide your registered work credentials to proceed.</p>
                </div>

                <form id="loginForm"  action="employee-login" class="space-y-4"  method="post">
                    
                    <!-- Email Input Group -->
                    <div class="form-group flex flex-col gap-1.5">
                        <label for="email" class="text-xs font-bold text-textDark">Work Email Address <span class="text-brandOrange">*</span></label>
                        <div class="relative">
                            <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm">
                                <i class="fa-regular fa-envelope"></i>
                            </span>
                            <input type="email" id="email" name="email" placeholder="e.g. hr@wipro.com" 
                                   class="pl-9 pr-4 py-2.5 w-full text-xs font-semibold text-textDark border border-borderColor rounded-xl focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight/30 bg-white transition-all" required>
                        </div>
                    </div>

                    <!-- Password Input Group -->
                    <div class="form-group flex flex-col gap-1.5">
                        <div class="flex justify-between items-center">
                            <label for="password" class="text-xs font-bold text-textDark">Account Password <span class="text-brandOrange">*</span></label>
                            <a href="#" onclick="triggerForgotPassword(event)" class="text-[10px] font-bold text-brandOrange hover:underline">Forgot Password?</a>
                        </div>
                        <div class="relative">
                            <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm">
                                <i class="fa-solid fa-lock"></i>
                            </span>
                            <input type="password" id="password" name="password" placeholder="••••••••" 
                                   class="pl-9 pr-16 py-2.5 w-full text-xs font-semibold text-textDark border border-borderColor rounded-xl focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight/30 bg-white transition-all" required>
                            <button type="button" onclick="togglePasswordVisibility()" class="absolute right-3 top-1/2 -translate-y-1/2 text-textLight hover:text-brandOrange text-[10px] font-bold">
                                SHOW
                            </button>
                        </div>
                    </div>

                    <!-- Remember me and helper terms -->
                    <div class="flex items-center justify-between pt-1">
                        <label class="flex items-center gap-2 cursor-pointer select-none">
                            <input type="checkbox" id="rememberMe" class="w-4 h-4 accent-brandOrange rounded border-borderColor cursor-pointer">
                            <span class="text-[11px] font-medium text-textMuted">Remember this workstation</span>
                        </label>
                    </div>

                    <!-- Submit CTA Button -->
                    <button type="submit" id="submitBtn" class="w-full py-3 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2">
                        Verify and Login <i class="fa-solid fa-chevron-right text-[10px]"></i>
                    </button>
                </form>

                <!-- Mock test credential card -->
                <div class="p-3.5 bg-brandOrangeLight/40 rounded-2xl border border-brandOrange/10 flex items-start gap-3">
                    <span class="text-brandOrange text-sm mt-0.5"><i class="fa-solid fa-circle-info"></i></span>
                    <div class="space-y-0.5">
                        <span class="text-[10px] font-bold text-brandOrange tracking-wider uppercase block">Quick Credentials Test:</span>
                        <p class="text-[10px] text-textMuted leading-normal">Use registered test address <strong class="text-textDark">hr@wipro.com</strong> & matching password to login instantly.</p>
                    </div>
                </div>

            </div>

            <!-- BOTTOM ACCELERATED SIGNUP LINK -->
            <div class="border-t border-borderColor pt-6 text-center">
                <span class="text-xs text-textMuted">New to Qspiders Talent Portal?</span>
                <a href="employee_signup.jsp" class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover hover:underline ml-1">Create Corporate Account <i class="fa-solid fa-arrow-right-to-bracket text-[10px] ml-0.5"></i></a>
            </div>
        </div>
    </div>

    <!-- TOAST NOTIFICATION CONTAINER -->
    <div id="toastNotification" class="fixed bottom-6 right-6 z-50 bg-textDark text-white px-5 py-3 rounded-xl shadow-2xl flex items-center gap-3 transition-all duration-300 transform translate-y-20 opacity-0">
        <span class="text-brandOrange text-sm" id="toastIcon"><i class="fa-solid fa-circle-exclamation"></i></span>
        <p class="text-xs font-bold" id="toastMessage">Authenticating credentials...</p>
    </div>

    <!-- JAVASCRIPT REGISTRATION FORM WORKFLOW -->
    <script>
        // Toggle password character masking
        function togglePasswordVisibility() {
            const field = document.getElementById('password');
            const trigger = field.nextElementSibling;
            if (field.type === 'password') {
                field.type = 'text';
                trigger.innerText = 'HIDE';
            } else {
                field.type = 'password';
                trigger.innerText = 'SHOW';
            }
        }

        // Simulated Authentication Logic
        function handleLoginSubmit(event) {
            event.preventDefault();

            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value;
            const submitBtn = document.getElementById('submitBtn');

            // Quick check restricting generic public domains to emphasize business access
            const domain = email.split('@')[1];
            const publicDomains = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com"];
            
            if (domain && publicDomains.includes(domain.toLowerCase())) {
                triggerToast("Public domains are restricted. Please log in with your corporate address.", "warning");
                return;
            }

            if (password.length < 4) {
                triggerToast("Password must match standard complexity requirements.", "warning");
                return;
            }

            // Animate submission processing state
            submitBtn.disabled = true;
            submitBtn.innerHTML = '<i class="fa-solid fa-circle-notch animate-spin mr-1"></i> Authenticating...';

            setTimeout(() => {
                // Mock direct success trigger for 'hr@wipro.com' or other valid corporate addresses
                if (email.toLowerCase() === 'hr@wipro.com') {
                    triggerToast("Verification Successful! Redirecting to dashboard...", "success");
                    
                    // Simulate system routing redirect to dashboard after delay
                    setTimeout(() => {
                        window.location.href = 'employer_dashboard.jsp';
                    }, 1200);
                } else {
                    // For custom corporate registration test
                    triggerToast("Success! Custom workplace active. Redirecting dashboard workspace...", "success");
                    setTimeout(() => {
                        window.location.href = 'employer_dashboard.jsp';
                    }, 1200);
                }
            }, 1000);
        }

        // Simulated Forgot Password trigger
        function triggerForgotPassword(event) {
            event.preventDefault();
            const email = document.getElementById('email').value.trim();
            
            if (!email) {
                triggerToast("Please enter your corporate email address first to reset password.", "warning");
            } else {
                triggerToast(`Password reset protocol linked directly to ${email} successfully!`, "success");
            }
        }

        // Custom toast alerter
        function triggerToast(message, type) {
            const toast = document.getElementById('toastNotification');
            const toastMsg = document.getElementById('toastMessage');
            const toastIcon = document.getElementById('toastIcon');

            toastMsg.innerText = message;
            if (type === 'warning') {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-exclamation text-brandOrange"></i>';
            } else if (type === 'success') {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-check text-emerald-400"></i>';
            } else {
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-info text-blue-400"></i>';
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