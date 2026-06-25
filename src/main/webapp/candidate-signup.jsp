<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Registration | Qspiders Portal</title>
    
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
        input, select, textarea {
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
        input::placeholder, textarea::placeholder {
            color: #8993A4;
        }
        input:focus, select:focus, textarea:focus {
            outline: none;
            border-color: #FF6E31;
            box-shadow: 0 0 0 4px rgba(255, 110, 49, 0.1);
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 4px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: transparent;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #EBECF0;
            border-radius: 4px;
        }
        .custom-scrollbar:hover::-webkit-scrollbar-thumb {
            background: #8993A4;
        }
    </style>
</head>
<body class="bg-bgMain text-textDark min-h-screen flex items-center justify-center p-0 md:p-6 overflow-x-hidden">

    <!-- MAIN SPLIT WRAPPER -->
    <div class="bg-white rounded-none md:rounded-3xl shadow-2xl border-0 md:border border-borderColor w-full max-w-6xl min-h-screen md:min-h-[85vh] flex flex-col lg:flex-row overflow-hidden">
        
        <!-- LEFT SIDE: CANDIDATE BRANDING BANNER -->
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

            <!-- Candidate messaging block -->
            <div class="my-12 space-y-8 z-10">
                <div>
                    <span class="bg-white/20 text-white text-[11px] font-bold tracking-widest uppercase px-3 py-1 rounded-full">For Job Seekers</span>
                    <h2 class="text-3xl md:text-4xl font-extrabold tracking-tight mt-3 leading-tight">Launch Your Tech Career.</h2>
                    <p class="text-sm text-brandOrangeLight/90 mt-2 leading-relaxed">Connect directly with 500+ top global companies. Showcase your pre-screened technical achievements and get recruited directly from academy drives.</p>
                </div>

                <!-- Strategic alumni perks list -->
                <div class="space-y-4">
                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-graduation-cap"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Direct Campus Drives</h4>
                            <p class="text-xs text-brandOrangeLight/80">Get exclusive access to recruiters specifically looking for trained alumni from your academy.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-shield-halved"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Verified Skill Badges</h4>
                            <p class="text-xs text-brandOrangeLight/80">Your mock ratings, aggregate benchmarks, and skills are verified directly on your profile page.</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 rounded-xl bg-white/15 flex items-center justify-center text-lg shadow-inner shrink-0">
                            <i class="fa-solid fa-bolt"></i>
                        </div>
                        <div>
                            <h4 class="font-bold text-sm">Automated Resume Matches</h4>
                            <p class="text-xs text-brandOrangeLight/80">No manual application tracing. Get automatically matched to requirements based on your scores.</p>
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

        <!-- RIGHT SIDE: SINGLE-PAGE REGISTRATION PANEL -->
        <div class="flex-1 p-8 md:p-12 flex flex-col justify-between">
            
            <!-- TOP NAVIGATION AND ACTION LINKS -->
            <div class="flex items-center justify-between border-b border-borderColor pb-6">
                <div>
                    <h3 class="font-extrabold text-xl text-textDark">Candidate Registration</h3>
                    <p class="text-xs text-textMuted mt-0.5">Register your candidate profile to apply for active drives.</p>
                </div>
                <!-- Redirect to login -->
                <div class="text-right">
                    <span class="text-xs text-textMuted block">Already registered?</span>
                    <a href="candidate_login.jsp" class="text-xs font-bold text-brandOrange hover:text-brandOrangeHover hover:underline">Seeker Login <i class="fa-solid fa-arrow-right-to-bracket ml-0.5"></i></a>
                </div>
            </div>

            <!-- DYNAMIC SIGNUP REGISTRATION FORM -->
            <div class="flex-1 overflow-y-auto pr-2 mt-6 custom-scrollbar max-h-[60vh] md:max-h-[65vh]">
                <form action="register-user" method="POST" id="signupForm" class="flex flex-col space-y-8 max-w-xl w-full mx-auto pb-6" onsubmit="handleCandidateSubmit(event)">
                    
                    <!-- SECTION 1: PERSONAL DETAILS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-circle-user mr-1"></i> Contact Information</h4>
                            <p class="text-xs text-textMuted">Provide your standard active coordinates for recruiter communication.</p>
                        </div>

                        <div class="form-group">
                            <label for="fullName">Full Name <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-regular fa-user"></i></span>
                                <input type="text" id="fullName" name="fullName" placeholder="e.g. Rohan Verma" class="pl-9 pr-4 py-2.5" required>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label for="email">Email Address <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-regular fa-envelope"></i></span>
                                    <input type="email" id="email" name="email" placeholder="e.g. rohan.verma@gmail.com" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="contactNo">Contact Number <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-phone"></i></span>
                                    <input type="tel" id="contactNo" name="contactNo" placeholder="e.g. 9876543210" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- SECTION 2: ACADEMIC QUALIFICATIONS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-user-graduate mr-1"></i> Academic Records</h4>
                            <p class="text-xs text-textMuted">Recruiters filter profiles strictly on academic aggregates and YOP.</p>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label for="degree">Highest Qualification / Degree <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-graduation-cap"></i></span>
                                    <select id="degree" name="degree" class="pl-9 pr-4 py-2.5 bg-white" required>
                                        <option value="" disabled selected>Select Degree</option>
                                        <option value="B.E/B.Tech">B.E / B.Tech (Engineering)</option>
                                        <option value="MCA">MCA (Computer Applications)</option>
                                        <option value="BCA">BCA (Computer Applications)</option>
                                        <option value="M.E/M.Tech">M.E / M.Tech</option>
                                        <option value="B.Sc">B.Sc (Computer Science/IT)</option>
                                        <option value="M.Sc">M.Sc</option>
                                        <option value="Diploma">Diploma / Polytechnic</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="stream">Specialization Stream / Branch <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-network-wired"></i></span>
                                    <input type="text" id="stream" name="stream" placeholder="e.g. Computer Science, Mechanical" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div class="form-group">
                                <label for="yop">Year of Passing (YOP) <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-regular fa-calendar-days"></i></span>
                                    <select id="yop" name="yop" class="pl-9 pr-4 py-2.5 bg-white" required>
                                        <option value="" disabled selected>Select YOP</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027 (Upcoming)</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="aggregate">Graduation Aggregate Percentage (%) <span>*</span></label>
                                <div class="relative mt-1">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-award"></i></span>
                                    <input type="number" step="0.01" min="0" max="100" id="aggregate" name="aggregate" placeholder="e.g. 74.50" class="pl-9 pr-4 py-2.5" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- SECTION 3: TECHNICAL TRAINING & SKILLS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-terminal mr-1"></i> Specialized Domain Skills</h4>
                            <p class="text-xs text-textMuted">Define your specialized training domains to map matching vacancies.</p>
                        </div>

                        <div class="form-group">
                            <label for="domain">Trained Specialization Stream / Domain <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-laptop-code"></i></span>
                                <select id="domain" name="domain" class="pl-9 pr-4 py-2.5 bg-white" required>
                                    <option value="" disabled selected>Select Training Stream</option>
                                    <option value="Java Full Stack">Java Full Stack Development</option>
                                    <option value="Python Full Stack">Python Full Stack Development</option>
                                    <option value="Software Testing">Software Testing (Manual & Automation)</option>
                                    <option value="Web Development">Web UI / React JS Development</option>
                                    <option value="SQL Developer">SQL & Database Administration</option>
                                    <option value="Data Science">Data Science & Analytics</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="keySkills">Key Tools & Technologies (Comma-Separated)</label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-2.5 text-textLight text-sm"><i class="fa-solid fa-code"></i></span>
                                <textarea id="keySkills" name="keySkills" placeholder="e.g. Java, Selenium WebDriver, HTML, SQL, Git" class="pl-9 pr-4 py-2 h-16 resize-none"></textarea>
                            </div>
                        </div>
                    </div>

                    <!-- SECTION 4: SECURITY CREDENTIALS -->
                    <div class="space-y-4">
                        <div class="space-y-1 border-b border-borderColor pb-2">
                            <h4 class="text-sm font-bold text-brandOrange uppercase tracking-wider"><i class="fa-solid fa-shield-halved mr-1"></i> Account Security</h4>
                            <p class="text-xs text-textMuted">Set standard password metrics to secure your portal.</p>
                        </div>

                        <div class="form-group">
                            <label for="password">Create Secure Password <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" id="password" name="password" placeholder="Min 8 characters" class="pl-9 pr-16 py-2.5" required>
                                <button type="button" onclick="togglePasswordVisibility('password')" class="absolute right-3 top-1/2 -translate-y-1/2 text-textLight hover:text-brandOrange text-xs font-bold">
                                    SHOW
                                </button>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password <span>*</span></label>
                            <div class="relative mt-1">
                                <span class="absolute left-3 top-1/2 -translate-y-1/2 text-textLight text-sm"><i class="fa-solid fa-lock"></i></span>
                                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm secure credentials" class="pl-9 pr-16 py-2.5" required>
                                <button type="button" onclick="togglePasswordVisibility('confirmPassword')" class="absolute right-3 top-1/2 -translate-y-1/2 text-textLight hover:text-brandOrange text-xs font-bold">
                                    SHOW
                                </button>
                            </div>
                        </div>

                        <!-- Candidate Terms Checkbox -->
                        <div class="p-3 bg-brandOrangeLight/40 rounded-xl border border-brandOrange/10 mt-3">
                            <label class="flex items-start gap-2.5 cursor-pointer select-none">
                                <input type="checkbox" id="termsCheck" name="termsCheck" class="mt-1 w-4 h-4 accent-brandOrange shrink-0">
                                <span class="text-[11px] text-textMuted leading-normal">I declare that the details provided are true and correct. I agree to receive notification logs from Qspiders recruitment desk and adhere to the <a href="#" class="text-brandOrange font-bold hover:underline">Candidate Placement Rules</a>.</span>
                            </label>
                        </div>
                    </div>

                    <!-- DYNAMIC INTERACTION BUTTON PANELS -->
                    <div class="pt-6 mt-2">
                        <!-- Submit Button -->
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
                    <h3 class="font-extrabold text-2xl text-textDark">Candidate Registered!</h3>
                    <p class="text-sm text-textMuted leading-relaxed">Your profile was successfully recorded and synced with <strong id="successStudent" class="text-textDark">Rohan Verma</strong> credentials.</p>
                </div>

                <div class="p-4 bg-orange-50/50 rounded-2xl border border-orange-100/50 text-left space-y-2">
                    <div class="flex items-center gap-2 text-xs font-bold text-brandOrange">
                        <i class="fa-solid fa-unlock-keyhole"></i> Account Activated
                    </div>
                    <p class="text-[11px] text-textMuted leading-relaxed">Your dashboard workspace is configured. You can now view matching job requirements, view training assessments, and track interview streams.</p>
                </div>

                <!-- CTA buttons linking directly to candidate pages -->
                <div class="grid grid-cols-1 gap-3 pt-2">
                    <button onclick="window.location.href='candidate_dashboard.jsp'" class="w-full px-5 py-3 text-xs font-bold bg-brandOrange hover:bg-brandOrangeHover text-white rounded-xl shadow-md transition-all flex items-center justify-center gap-2">
                        <i class="fa-solid fa-house-laptop"></i> Go to Candidate Dashboard
                    </button>
                    <button onclick="window.location.href='candidate_login.jsp'" class="w-full px-5 py-3 text-xs font-bold bg-gray-100 hover:bg-gray-200 text-textDark rounded-xl transition-all">
                        Login to Your Account
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
        // Password visibility toggler
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

        // Candidate Signup Processor
        function handleCandidateSubmit(event) {
            event.preventDefault();

            // Form inputs
            const fullName = document.getElementById('fullName').value.trim();
            const email = document.getElementById('email').value.trim();
            const contactNo = document.getElementById('contactNo').value.trim();
            const degree = document.getElementById('degree').value;
            const stream = document.getElementById('stream').value.trim();
            const yop = document.getElementById('yop').value;
            const aggregate = parseFloat(document.getElementById('aggregate').value);
            const domain = document.getElementById('domain').value;
            const password = document.getElementById('password').value;
            const confirm = document.getElementById('confirmPassword').value;
            const terms = document.getElementById('termsCheck').checked;

            // Form Validations
            if (fullName.length < 3) {
                triggerToast("Please provide a valid full name (min 3 chars).", "warning");
                return;
            }

            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                triggerToast("Please provide a valid email format.", "warning");
                return;
            }

            const phoneRegex = /^[6789]\d{9}$/;
            if (!phoneRegex.test(contactNo)) {
                triggerToast("Please provide a valid 10-digit mobile number.", "warning");
                return;
            }

            if (!degree || !stream) {
                triggerToast("Qualification Details and stream specialization are required.", "warning");
                return;
            }

            if (isNaN(aggregate) || aggregate < 0 || aggregate > 100) {
                triggerToast("Percentage aggregate must be a number between 0 and 100.", "warning");
                return;
            }

            if (!domain) {
                triggerToast("Please select your specialized training domain.", "warning");
                return;
            }

            if (password.length < 8) {
                triggerToast("Password credentials must contain at least 8 characters.", "warning");
                return;
            }

            if (password !== confirm) {
                triggerToast("Passwords do not match. Re-verify inputs.", "warning");
                return;
            }

            if (!terms) {
                triggerToast("Please accept the candidate placement guidelines.", "warning");
                return;
            }

            // Animate submission state
            const submitBtn = document.getElementById('submitBtn');
            submitBtn.innerHTML = '<i class="fa-solid fa-circle-notch animate-spin mr-1"></i> Saving Profile...';
            submitBtn.disabled = true;

            // Display candidate success modal
            document.getElementById('successStudent').innerText = fullName;
            const modal = document.getElementById('successOverlay');
            const content = document.getElementById('modalContent');
            
            modal.classList.remove('hidden');
            setTimeout(() => {
                content.classList.remove('scale-95', 'opacity-0');
                content.classList.add('scale-100', 'opacity-100');
            }, 50);

            // Execute actual post parameter submit to "register-user" Servlet after 1.5-second UI review
            setTimeout(() => {
                document.getElementById('signupForm').submit();
            }, 1500);
        }

        // Custom toast trigger
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