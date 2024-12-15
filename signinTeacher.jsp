<%-- 
    Document   : signinTeacher
    Created on : 24 Nov, 2022, 3:30:33 PM
    Author     : shata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signin</title>
    <!-- css style ink -->
    <link rel="stylesheet" href="style.css">
     <!-- external css link -->
     <style>
        body
        {
            background: #000;
        }
     </style>
    
     <!-- Tailwind cdn -->
     <script src="https://cdn.tailwindcss.com"></script>
 
     <script>
         tailwind.config = {
             theme: {
                 screens: {
                     'sm': '576px',
 
                     'md': '768px',
 
                     'lg': '992px',
 
                     'xl': '1200px',
                 },
                 fontFamily: {
                     'inter': ['Inter', 'sans-serif'],
                 },
                 extend: {
                    backgroundImage: {
                       'hero-pattern': "url('.\Assest\background-illustration.png')",
                       'footer-texture': "url('/img/footer-texture.png')",
                     },
                     colors: {
                         mygold: '#ad9970',
                     },
                 }
             }
         }
     </script>
</head>
<body>
    <div class="flex flex-col lg:flex lg:flex-row   justify-center items-center lg:hid">
        <div class="back-img w-1/2 hidden h-screen lg:flex lg:flex-col justify-center items-center">
           <div class="my-10 inner w-4/5 h-3/5 rounded-lg px-10 max-w-md   py-10 space-y-10">
               <a href="">
                <h1 class="text-[#233C7B] italic max-w-md text-4xl font-bold">
                    <span class="text-6xl">L</span>earn <span class="text-6xl">W</span>ith <span class="text-6xl">U</span>s
                </h1>
               </a>
               <h1 class="text-white max-w-md text-4xl font-bold">
                Hey,There Welcome!
               </h1>
               <p class="text-blue-900  font-semibold text-xl">
                we are Team Learn With Us.
               </p>
               <p class="text-justify max-w-md text-xl">
                <span></span>
                A life spent making mistakes is not only more honorable, but more useful than a life spent doing nothing.
               </p>
           </div>
        </div>
     
        <div class="md:w-1/2 h-screen  p-4 rounded-md shadow sm:p-8 bd-red-200 dark:text-gray-100">
            <h2 class="mb-3 hero-para text-3xl font-semibold text-black text-center text-[#233C7B]">Login to your account</h2>
            <p class="text-sm text-center dark:text-gray-400 ">
                <a href="./signinAdmin.jsp" rel="noopener noreferrer" class="focus:underline hover:underline">Sign in as Admin</a>
            </p>
            <div class="my-6 space-y-4">
                button aria-label="Login with GitHub" role="button" class="submit-btn flex items-center justify-center w-full p-4 space-x-4 border rounded-md focus:ring-2 focus:ring-offset-1 dark:border-gray-400 focus:ring-violet-400">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="w-5 h-5 ">
                        <path d="M16 0.396c-8.839 0-16 7.167-16 16 0 7.073 4.584 13.068 10.937 15.183 0.803 0.151 1.093-0.344 1.093-0.772 0-0.38-0.009-1.385-0.015-2.719-4.453 0.964-5.391-2.151-5.391-2.151-0.729-1.844-1.781-2.339-1.781-2.339-1.448-0.989 0.115-0.968 0.115-0.968 1.604 0.109 2.448 1.645 2.448 1.645 1.427 2.448 3.744 1.74 4.661 1.328 0.14-1.031 0.557-1.74 1.011-2.135-3.552-0.401-7.287-1.776-7.287-7.907 0-1.751 0.62-3.177 1.645-4.297-0.177-0.401-0.719-2.031 0.141-4.235 0 0 1.339-0.427 4.4 1.641 1.281-0.355 2.641-0.532 4-0.541 1.36 0.009 2.719 0.187 4 0.541 3.043-2.068 4.381-1.641 4.381-1.641 0.859 2.204 0.317 3.833 0.161 4.235 1.015 1.12 1.635 2.547 1.635 4.297 0 6.145-3.74 7.5-7.296 7.891 0.556 0.479 1.077 1.464 1.077 2.959 0 2.14-0.020 3.864-0.020 4.385 0 0.416 0.28 0.916 1.104 0.755 6.4-2.093 10.979-8.093 10.979-15.156 0-8.833-7.161-16-16-16z"></path>
                    </svg>
                    <a href="./signinAdmin.jsp"><p class="text-[#233C7B] text-md font-semibold]">Login as Admin</p></a>
                </button>
                <button aria-label="Login with GitHub" role="button" class="submit-btn flex items-center justify-center w-full p-4 space-x-4 border rounded-md focus:ring-2 focus:ring-offset-1 dark:border-gray-400 focus:ring-violet-400">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="w-5 h-5 ">
                        <path d="M16 0.396c-8.839 0-16 7.167-16 16 0 7.073 4.584 13.068 10.937 15.183 0.803 0.151 1.093-0.344 1.093-0.772 0-0.38-0.009-1.385-0.015-2.719-4.453 0.964-5.391-2.151-5.391-2.151-0.729-1.844-1.781-2.339-1.781-2.339-1.448-0.989 0.115-0.968 0.115-0.968 1.604 0.109 2.448 1.645 2.448 1.645 1.427 2.448 3.744 1.74 4.661 1.328 0.14-1.031 0.557-1.74 1.011-2.135-3.552-0.401-7.287-1.776-7.287-7.907 0-1.751 0.62-3.177 1.645-4.297-0.177-0.401-0.719-2.031 0.141-4.235 0 0 1.339-0.427 4.4 1.641 1.281-0.355 2.641-0.532 4-0.541 1.36 0.009 2.719 0.187 4 0.541 3.043-2.068 4.381-1.641 4.381-1.641 0.859 2.204 0.317 3.833 0.161 4.235 1.015 1.12 1.635 2.547 1.635 4.297 0 6.145-3.74 7.5-7.296 7.891 0.556 0.479 1.077 1.464 1.077 2.959 0 2.14-0.020 3.864-0.020 4.385 0 0.416 0.28 0.916 1.104 0.755 6.4-2.093 10.979-8.093 10.979-15.156 0-8.833-7.161-16-16-16z"></path>
                    </svg>
                    <a href="./signinTeacher.jsp"><p class="text-[#233C7B] text-md font-semibold]">Login as Teacher</p></a>
                </button>
                <button aria-label="Login with Twitter" role="button" class=" submit-btn flex items-center justify-center w-full p-4 space-x-4 border rounded-md focus:ring-2 focus:ring-offset-1 dark:border-gray-400 focus:ring-violet-400">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="w-5 h-5 ">
                        <path d="M31.937 6.093c-1.177 0.516-2.437 0.871-3.765 1.032 1.355-0.813 2.391-2.099 2.885-3.631-1.271 0.74-2.677 1.276-4.172 1.579-1.192-1.276-2.896-2.079-4.787-2.079-3.625 0-6.563 2.937-6.563 6.557 0 0.521 0.063 1.021 0.172 1.495-5.453-0.255-10.287-2.875-13.52-6.833-0.568 0.964-0.891 2.084-0.891 3.303 0 2.281 1.161 4.281 2.916 5.457-1.073-0.031-2.083-0.328-2.968-0.817v0.079c0 3.181 2.26 5.833 5.26 6.437-0.547 0.145-1.131 0.229-1.724 0.229-0.421 0-0.823-0.041-1.224-0.115 0.844 2.604 3.26 4.5 6.14 4.557-2.239 1.755-5.077 2.801-8.135 2.801-0.521 0-1.041-0.025-1.563-0.088 2.917 1.86 6.36 2.948 10.079 2.948 12.067 0 18.661-9.995 18.661-18.651 0-0.276 0-0.557-0.021-0.839 1.287-0.917 2.401-2.079 3.281-3.396z"></path>
                    </svg>
                    <p class="text-black text-[#233C7B]">Login with Twitter</p>
                </button>
            </div>
            <div class="flex items-center w-full my-4">
                <hr class="w-full dark:text-gray-400">
                <p class="px-3 dark:text-gray-400">OR</p>
                <hr class="w-full dark:text-gray-400">
            </div>
            <form  action="./loginPageTeacher.jsp" class="space-y-8 ng-untouched ng-pristine ng-valid" method="post" >
                <div class="space-y-4">
                    <div class="space-y-2">
                        <label for="email" class="block text-[#fff] text-md font-semibold">Email address</label>
                        <input type="email" name="emailT" id="email" placeholder="leroy@jenkins.com" class="w-full px-3 py-2 border rounded-md dark:border-gray-700 dark:text-gray-100 focus:dark:border-violet-400">
                    </div>
                    <div class="space-y-2">
                        <div class="flex justify-between">
                            <label for="password" class="text-sm text-[#fff] text-md font-semibold">Password</label>
                            <a rel="noopener noreferrer" href="#" class="text-xs hover:underline   text-[#233C7B] text-md font-semibold">Forgot password?</a>
                        </div>
                        <input type="password" name="passwordT" id="password" placeholder="*****" class="w-full px-3 py-2 border rounded-md dark:border-gray-700  text-black 100 focus:dark:border-violet-400">
                    </div>
                </div> 
                <button aria-label="Login " role="button" class="submit-btn flex items-center justify-center w-full p-3 space-x-4 border rounded-md focus:ring-2 focus:ring-offset-1 dark:border-gray-400 focus:ring-violet-400">
                    
                    <p class="text-[#fff] text-md font-semibold]">Login</p>
                </button>
            </form>
            
        </div>
        </section>
    </div>

</body>
</html>