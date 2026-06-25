<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Login | Qspiders Portal</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Tailwind CSS -->
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
    
    <!-- FontAwesome for Corporate & Training Icons -->
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
        .form-group {
            display: flex;
            flex-direction: column;
        }
        .form-group label {
            font-size: 0.75rem;
            font-weight: 700;
            color: #091E42;
        }
        .form-group label span {
            color: #FF6E31;
        }
        input, select {
            width: 100%;
            border: 1.5px solid #EBECF0;
            border-radius: 12px;
            font-family: inherit;
            font-size: 0.8rem;
            font-weight: 500;
            color: #091E42;
            background-color: #ffffff;
            transition: all 0.3s ease;
        }
        input::placeholder {
            color: #8993A4;
        }
        input:focus, select:focus {
            outline: none;
            border-color: #FF6E31;
            box-shadow: 0 0 0 4px rgba(255, 110, 49, 0.1);
        }
    </style>
</head>
<body class="bg-bgMain text-textDark min-h-screen flex items-center justify-center p-0 md:p-6 overflow-x-hidden">

    <!-- MAIN SPLIT WRAPPER -->
    <div class="bg-white rounded-none md:rounded-3xl shadow-2xl border-0 md:border border-borderColor w-full max-w-5xl min-h-screen md:min-h-[75vh] flex flex-col lg:flex-row overflow-hidden">
        
        <!-- LEFT SIDE: CANDIDATE BRANDING BANNER (Hidden on mobile for seamless focus) -->
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

            <!-- Seeker promotional block -->
            <div class="my-auto space-y-8 z-10">
                <div>
                    <span class="bg-white/20 text-white text-[11px] font-bold tracking-widest uppercase px-3 py-1 rounded-full">Candidate Workspace</span>
                    <h2 class="text-3xl font-extrabold tracking-tight mt-4 leading-tight">Welcome Back, Seeker!</h2>
                    <p class="text-sm text-brandOrangeLight/90 mt-2 leading-relaxed">Log in to track active recruitment status, view scheduled mock test evaluations, and explore top enterprise drives matching your skills.</p>
                </div>

                <!-- Strategic stats list -->
                <div class="space-y-4 pt-4 border-t border-white/10">
                    <div class="flex items-center gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-graduation-cap"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-xs">Pre-Verified Credentials</h4>
                            <p class="text-[11px] text-brandOrangeLight/80">Recruiters directly source filtered profiles matching standard training marks.</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-briefcase"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-xs">Direct Client Drives</h4>
                            <p class="text-[11px] text-brandOrangeLight/80">Exclusive application paths to 500+ MNCs recruiting from your academy.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer copyright alignment -->
            <div class="z-10 text-xs text-brandOrangeLight/70 flex items-center justify-between border-t border-white/10 pt-4">
                <span>&copy; 2026 Qspiders Job Portal</span>
                <div class="flex gap-3">
                    <a href="#" class="hover:underline">Support Desk</a>
                    <span>•</span>
                    <a href="#" class="hover:underline">Placement Policy</a>
                </div>
            </div>
        </div>

        <!-- RIGHT SIDE: LOGIN PANEL -->
        <div class="flex-1 p-8 md:p-12 flex flex-col justify-between bg-white">
            
            <!-- TOP NAVIGATION AND BACK BUTTON -->
            <div class="flex items-center justify-between border-b border-borderColor pb-6">
                <div>
                    <h3 class="font-extrabold text-xl text-textDark">Candidate Access</h3>
                    <p class="text-xs text-textMuted mt-0.5">Welcome back to your job seeker profile.</p>
                </div>
                <a href="index.jsp" class="text-xs font-semibold text-textMuted hover:text-brandOrange transition-all flex items-center gap-1">
                    <i class="fa-solid fa-arrow-left"></i> Home Page
                </a>
            </div>

            <!-- DYNAMIC CANDIDATE LOGIN FORM -->
            <div class="my-auto py-8 max-w-md w-full mx-auto space-y-6">
                
                <div class="space-y-1.5">
                    <h4 class="text-2xl font-extrabold text-textDark tracking-tight">Account Login</h4>
                    <p class="text-xs text-textMuted">Provide your registered coordinates to access the placement pool.</p>
                </div>

                <!-- Servlet Endpoint Trigger: user-login -->
                <form action="user-login" method="POST" id="loginForm" class="space-y-4" onsubmit="handleCandidateLogin(event)">
                    
                    <!-- Email Input Group -->
                    <div class="form-group flex flex-col gap-1.5">
                        <label for="email" class="text-xs font-bold text-textDark">Registered Email Address <span class="text-brandOrange">*</span></label>
                        <div class="relative">
                            <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm">
                                <i class="fa-regular fa-envelope"></i>
                            </span>
                            <input type="email" id="email" name="email" placeholder="e.g. rohan.verma@gmail.com" 
                                   class="pl-9 pr-4 py-2.5 w-full text-xs font-semibold text-textDark border border-borderColor rounded-xl focus:outline-none focus:border-brandOrange focus:ring-2 focus:ring-brandOrangeLight/30 bg-white transition-all" required>
                        </div>
                    </div>

                    <!-- Password Input Group -->
                    <div class="form-group flex flex-col gap-1.5">
                        <div class="flex justify-between items-center">
                            <label for="password" class="text-xs font-bold text-textDark">Secure Password <span class="text-brandOrange">*</span></label>
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

                    <!-- Remember Me Option -->
                    <div class="flex items-center justify-between pt-1">
                        <label class="flex items-center gap-2 cursor-pointer select-none">
                            <input type="checkbox" id="rememberMe" name="rememberMe" class="w-4 h-4 accent-brandOrange rounded border-borderColor cursor-pointer">
                            <span class="text-[11px] font-medium text-textMuted">Remember my session</span>
                        </label>
                    </div>

                    <!-- Submit CTA Button -->
                    <button type="submit" id="submitBtn" class="w-full py-3 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md hover:shadow-lg transition-all flex items-center justify-center gap-2">
                        Verify and Login <i class="fa-solid fa-chevron-right text-[10px]"></i>
                    </button>
                </form>

                <!-- Quick Demo Help box -->
                <div class="p-3.5 bg-brandOrangeLight/40 rounded-2xl border border-brandOrange/10 flex items-start gap-3">
                    <span class="text-brandOrange text-sm mt-0.5"><i class="fa-solid fa-circle-info"></i></span>
                    <div class="space-y-0.5">
                        <span class="text-[10px] font-bold text-brandOrange tracking-wider uppercase block">Quick Credentials Test:</span>
                        <p class="text-[10px] text-textMuted leading-normal">Enter your candidate email address to trigger standard servlet verification procedures.</p>
                    </div>
                </div>

            </div>

            <!-- BOTTOM ACCELERATED SIGNUP LINK -->
            <div class="border-t border-borderColor pt-6 text-center">
                <span class="text-xs text-textMuted">New to the Qspiders Talent Pool?</span>
                <a href="candidate_signup.jsp" class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover hover:underline ml-1">Create Seeker Account <i class="fa-solid fa-user-plus text-[10px] ml-0.5"></i></a>
            </div>
        </div>
    </div>

    <!-- TOAST NOTIFICATION CONTAINER -->
    <div id="toastNotification" class="fixed bottom-6 right-6 z-50 bg-textDark text-white px-5 py-3 rounded-xl shadow-2xl flex items-center gap-3 transition-all duration-300 transform translate-y-20 opacity-0">
        <span class="text-brandOrange text-sm" id="toastIcon"><i class="fa-solid fa-circle-notch animate-spin"></i></span>
        <p class="text-xs font-bold" id="toastMessage">Verifying candidate identity...</p>
    </div>

    <!-- JAVASCRIPT VALIDATIONS & DISPATCH logic -->
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

        // Handle Form Validation and Servlet Redirection
        function handleCandidateLogin(event) {
            event.preventDefault(); // Stop default instant submit for animation block

            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value;
            const submitBtn = document.getElementById('submitBtn');

            // Standard client-side credential checks
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                triggerToast("Please provide a valid email format.", "warning");
                return;
            }

            if (password.length < 6) {
                triggerToast("Password credentials must contain at least 6 characters.", "warning");
                return;
            }

            // Animate submission processing state
            submitBtn.disabled = true;
            submitBtn.innerHTML = '<i class="fa-solid fa-circle-notch animate-spin mr-1"></i> Authenticating...';
            triggerToast("Authenticating details...", "success");

            // Execute the actual submit command targeting "user-login" after a brief 1.2s delay for visual feedback
            setTimeout(() => {
                document.getElementById('loginForm').submit();
            }, 1200);
        }

        // Simulated Forgot Password trigger
        function triggerForgotPassword(event) {
            event.preventDefault();
            const email = document.getElementById('email').value.trim();
            
            if (!email) {
                triggerToast("Please enter your candidate email address first to trace credentials.", "warning");
            } else {
                triggerToast(`Verification checkpoint dispatched to ${email}!`, "success");
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
                toastIcon.innerHTML = '<i class="fa-solid fa-circle-notch animate-spin text-brandOrange"></i>';
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