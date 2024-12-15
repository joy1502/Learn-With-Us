
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>studentdashboard</title>
    <!-- css style ink -->
    <link rel="stylesheet" href="student.css">      
      <!-- external css link -->
      <link href="https://cdn.jsdelivr.net/npm/daisyui@2.42.1/dist/full.css" rel="stylesheet" type="text/css" />
      <script defer src="https://cdn.tailwindcss.com"></script>
      <link href="https://cdn.jsdelivr.net/npm/daisyui@2.42.1/dist/full.css" rel="stylesheet" type="text/css" />
      <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" rel="stylesheet" type="text/css" />

      <!-- Tailwind cdn -->
      <!-- Font -->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link
        href="https://fonts.googleapis.com/css2?family=Poppinsa:wght@200;300;400;500;600;700;800&display=swap"
        rel="stylesheet"
      />
      <script src="https://cdn.tailwindcss.com"></script>
      <script>
        tailwind.config = {
            theme: {
                screens: {
                    'sm': '406px',

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
                        greenmain:'#3DBE29',
                        myblue:'#233C7B',
                        hoverText:'#F64E4C',
                        header:'#2a1d33'
                    },
                }
            }
        }
    </script>

</head>
<body>
    <!-- Header start -->
    <header class="p-4 bg-[#212121] dark:bg-header  dark:text-gray-100 text-white">
        <div class="container flex justify-between h-16 mx-auto">
            <ul class="items-stretch hidden space-x-3 lg:flex">
                <li class="flex">
                    <a rel="noopener noreferrer" href="./studentDashboard.jsp" class="flex items-center px-4 -mb-1 hover:border-b-2 dark:border-transparent dark:text-[#F64E4C] dark:border-[#F64E4C]">Home</a>
                </li>
                <li class="flex">
                    <a rel="noopener noreferrer" href="./project.html" class="flex items-center px-4 -mb-1 hover:border-b-2 dark:border-transparent hover:text-[#F64E4C] ">Project</a>
                </li>
                <li class="flex">
                    <a rel="noopener noreferrer" href="#" class="flex items-center px-4 -mb-1 hover:border-b-2 hover:ease-in dark:border-transparent hover:text-[#F64E4C] ">Contact</a>
                </li>
            </ul>
            <a rel="noopener noreferrer" href="./studentDashboard.jsp" aria-label="Back to homepage" class="flex  items-center p-2">
                <img class="w-20" src="./logoSt.png">
            </a>
            <div class="flex items-center md:space-x-4">
                <div class="relative">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-2">
                        <button type="submit" title="Search" class="p-1 focus:outline-none focus:ring">
                            <svg fill="currentColor" viewBox="0 0 512 512" class="w-4 h-4 dark:text-gray-100">
                                <path d="M479.6,399.716l-81.084-81.084-62.368-25.767A175.014,175.014,0,0,0,368,192c0-97.047-78.953-176-176-176S16,94.953,16,192,94.953,368,192,368a175.034,175.034,0,0,0,101.619-32.377l25.7,62.2L400.4,478.911a56,56,0,1,0,79.2-79.195ZM48,192c0-79.4,64.6-144,144-144s144,64.6,144,144S271.4,336,192,336,48,271.4,48,192ZM456.971,456.284a24.028,24.028,0,0,1-33.942,0l-76.572-76.572-23.894-57.835L380.4,345.771l76.573,76.572A24.028,24.028,0,0,1,456.971,456.284Z"></path>
                            </svg>
                        </button>
                    </span>
                    <input type="search" name="Search" placeholder="Search..." class="w-32 py-2 pl-10 text-sm rounded-md sm:w-auto focus:outline-none dark:bg-gray-800 dark:text-gray-100 focus:dark:bg-gray-900">
                </div>
                <a href="./index.html"><button type="button" class=" btn-logout hidden px-6 py-2 font-semibold lg:block   text-[#fff]  rounded  "  >Log out</button></a>
            </div>
            <button title="Open menu" type="button" class="p-4 lg:hidden ">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-6 h-6 dark:text-[#fff]">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                </svg>
            </button>
        </div>
    </header>

    <!-- profile  -->
    <div class="max-w-md p-8 sm:flex   mx-auto items-right  sm:space-x-6 rounded mt-8  dark:text-gray-100">
        <div class="flex-shrink-0 w-full mb-6 h-44 sm:h-32 sm:w-32 sm:mb-0">
            <img src="https://www.pngmart.com/files/23/Profile-PNG-Photo.png" alt="" class="object-cover object-center md:w-full h-full rounded dark:bg-gray-500 bg-white rounded-full">
        </div>
        <div class="flex flex-col space-y-4 text-white">
            <div>
                <h2 class="text-2xl font-semibold">
                    <%
                        out.print(session.getAttribute("name"));
                        %>
                </h2>
                <span class="text-sm dark:text-gray-400">
                    <%
                        out.print(session.getAttribute("branch"));
                        %>
                </span>
            </div>
            <div class="space-y-1">
                <span class="flex items-center space-x-2">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" aria-label="Email address" class="w-4 h-4">
                        <path fill="currentColor" d="M274.6,25.623a32.006,32.006,0,0,0-37.2,0L16,183.766V496H496V183.766ZM464,402.693,339.97,322.96,464,226.492ZM256,51.662,454.429,193.4,311.434,304.615,256,268.979l-55.434,35.636L57.571,193.4ZM48,226.492,172.03,322.96,48,402.693ZM464,464H48V440.735L256,307.021,464,440.735Z"></path>
                    </svg>
                    <span class="dark:text-gray-400">
                        <%
                        out.print(session.getAttribute("email"));
                        %>
                    </span>
                </span>
                <span class="flex items-center space-x-2">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" aria-label="Phonenumber" class="w-4 h-4">
                        <path fill="currentColor" d="M449.366,89.648l-.685-.428L362.088,46.559,268.625,171.176l43,57.337a88.529,88.529,0,0,1-83.115,83.114l-57.336-43L46.558,362.088l42.306,85.869.356.725.429.684a25.085,25.085,0,0,0,21.393,11.857h22.344A327.836,327.836,0,0,0,461.222,133.386V111.041A25.084,25.084,0,0,0,449.366,89.648Zm-20.144,43.738c0,163.125-132.712,295.837-295.836,295.837h-18.08L87,371.76l84.18-63.135,46.867,35.149h5.333a120.535,120.535,0,0,0,120.4-120.4v-5.333l-35.149-46.866L371.759,87l57.463,28.311Z"></path>
                    </svg>
                    <span class="dark:text-gray-400">6372281416</span>
                </span>
            </div>
        </div>
    </div>
    <!-- End of the profile -->

    <!-- Card start -->
   <section class=" mt-10 container mx-auto text-white">

     <h2 class="text-5xl   md:text-center font-bold typewrite" data-period="3000" data-type='["Welcome","Learn With us." , "Best Resource" ]'> </h2>
     <p class="dark:text-gray-200  submit-btn mt-10 caption text-center w-2/4 mx-auto rounded-md px-10">(Just For You ,Go And Download)</p>
    
    <div class="flex  flex-wrap justify-center   md:justify-between align-center sm:space-y-4  lg:space-y-0 md:space-x-4 mx-auto container mt-4 sm:mx-auto p-8 resource-section">
        <div class="max-w-xs rounded-md shadow-md dark:bg-gray-900 dark:text-gray-100 bg-[#212121] p-2 h-fit">
            <img src="note.jpg" alt="" class="object-cover object-center w-full rounded-t-md h-44 dark:bg-gray-500">
            <div class="flex flex-col justify-between p-2">
                <div class="space-y-2">
                    <h2 class="text-3xl font-semibold tracking-wide">Notes For You</h2>
                    <p class="dark:text-gray-100">Guyzz,every note of yours is available with us. We got it all!️</p>
                </div>
                <label  for="my-modal-5" type="button" class="flex cursor-pointer items-center justify-center w-full p-3 font-semibold tracking-wide rounded-md dark:bg-violet-400 dark:text-gray-900 text-2xl">Click Me🙏</label>
            </div>
        </div>
        <div class="max-w-xs rounded-md shadow-md dark:bg-gray-900 dark:text-gray-100 bg-[#212121] p-2 h-fit">
            <img src="e-bbok.jpg" alt="" class="object-cover object-center w-full rounded-t-md h-44 dark:bg-gray-500">
            <div class="flex flex-col justify-between p-2">
                <div class="space-y-2">
                    <h2 class="text-3xl font-semibold tracking-wide">E-Book</h2>
                    <p class="dark:text-gray-100">Guyzz , come on, use an e-book in today’s digital world</p>
                </div>
                <label  for="my-modal-5" type="button" class="flex cursor-pointer items-center justify-center w-full p-3 font-semibold tracking-wide rounded-md dark:bg-violet-400 dark:text-gray-900 text-2xl">Click Me🙏</label>
            </div>
        </div>
        <div class="max-w-xs rounded-md shadow-md dark:bg-gray-900 dark:text-gray-100 bg-[#212121] p-2 h-fit">
            <img src="question.jpg" alt="" class="object-cover object-center w-full rounded-t-md h-44 dark:bg-gray-500">
            <div class="flex flex-col justify-between p-2">
                <div class="space-y-2">
                    <h2 class="text-3xl font-semibold tracking-wide">Your Question</h2>
                    <p class="dark:text-gray-100">"Exam is tomorrow! Don’t worry,We added the questions for you."</p>
                </div>
               
                <label  for="my-modal-5" type="button" class="flex cursor-pointer items-center justify-center w-full p-3 font-semibold tracking-wide rounded-md dark:bg-violet-400 dark:text-gray-900 text-2xl">Click Me🙏</label>
             
            </div>
            
        </div>
        
    </div>
    </section> 
    
    <input type="checkbox" id="my-modal-5" class="modal-toggle" />
<div class="modal">
  <div class="modal-box w-11/12 max-w-sm">
    <figure><img src="backend2.jpg" alt="Shoes" /></figure>
    <h3 class="font-bold text-lg">Post Id</h3>
    <p class="py-4">Post Summary</p>
    <div class="modal-action">
      <a href="./cn lab.pdf" for="my-modal-5" download class="btn">Download</a>
      <a href="./cn lab.pdf" for="my-modal-5"  class="btn">view</a>
      <label for="my-modal-5" class="btn">Yay!</label>
    </div>
  </div>
</div>
<script src="letter.js"></script>

</body>
</html>