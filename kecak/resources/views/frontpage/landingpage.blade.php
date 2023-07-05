@vite(['resources/css/app.css', 'resources/js/app.js'])

<nav class="bg-white">
  <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
    <div class="relative flex h-16 items-center justify-between">
      <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
        <!-- Mobile menu button-->
        <button type="button" class="inline-flex items-center justify-center rounded-md p-2 text-gray-900 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
          <span class="sr-only">Open main menu</span>
          <!--
            Icon when menu is closed.

            Heroicon name: outline/bars-3

            Menu open: "hidden", Menu closed: "block"
          -->
          <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
          </svg>
          <!--
            Icon when menu is open.

            Heroicon name: outline/x-mark

            Menu open: "block", Menu closed: "hidden"
          -->
          <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
      <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
        <div class="flex flex-shrink-0 items-center">
        <h1 class="title-font text-lg font-medium text-blue-900">Mangana</h1>
        
        <div class="hidden sm:ml-6 sm:block">
          <div class="flex space-x-4">
            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
            <a href="" class="text-black-300 hover:bg-gray-300 hover:text-black px-3 py-2 rounded-md text-sm font-medium">Dashboard</a>

            <a href="{{url('checkout')}}" class="text-black-300 hover:bg-gray-300 hover:text-black px-3 py-2 rounded-md text-sm font-medium">Checkout</a>

            <a href="{{url('promo')}}" class="text-black-300 hover:bg-gray-300 hover:text-black px-3 py-2 rounded-md text-sm font-medium">Promo</a>

            
            <a href="{{url('profile')}}" class="text-black-300 hover:bg-gray-300 hover:text-black px-3 py-2 rounded-md text-sm font-medium">Profile</a>
            
          </div>
        </div>
      </div>


          <!--
            Dropdown menu, show/hide based on menu state.

            Entering: "transition ease-out duration-100"
              From: "transform opacity-0 scale-95"
              To: "transform opacity-100 scale-100"
            Leaving: "transition ease-in duration-75"
              From: "transform opacity-100 scale-100"
              To: "transform opacity-0 scale-95"
          -->
        </div>
      </div>
    </div>
  </div>

  <!-- Mobile menu, show/hide based on menu state. -->
  <div class="sm:hidden" id="mobile-menu">
    <div class="space-y-1 px-2 pt-2 pb-3">
      <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
      <a href="#" class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Dashboard</a>
      <a href="#" class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Checkout</a>
    </div>
  </div>
</nav>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/twelements/dist/css/index.min.css" />
<div class="py-12">
 <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
 <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
 <div class="p-6 bg-white border-b border-gray-200">
 <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
 <div class="flex items-baseline justify-between border-b border-gray200 pt-2 pb-6">
 <h1 class="text-4xl font-bold tracking-tight text-gray900">New Arrivals</h1>
 <div class="flex items-center">
 <div date-rangepicker class="flex items-center">
 <div class="relative">
 <div class="flex absolute inset-y-0 left-0 items-center pl3 pointer-events-none">
 <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:textgray400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fillrule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-
2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" cliprule="evenodd"></path></svg>
 </div>

 </div>

 <div class="relative">
 <div class="flex absolute inset-y-0 left-0 items-center pl3 pointer-events-none">
 <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:textgray400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fillrule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-
2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" cliprule="evenodd"></path></svg>
 </div>

 </div>
</div>

 </div>
 </div>
 <section>

 


@foreach ($packages as $key=>$item)

<div class="md:flex font-sans pt-8">
    <div class="md:shrink-0">
    <img src="https://th.bing.com/th/id/OIP.hfVFgty4zvGpetKtNtHuJQHaHa?pid=ImgDet&rs=1" alt="" class="h-48 w-full md:h-full md:w-56 inset-0 wfull object-cover rounded-lg" loading="lazy" />
    </div>
   <form class="p-6">
    <div class="flex flex-wrap">
    <h1 class="flex-auto font-medium text-slate-900">
    {{$item->package_name}}
    </h1>
   <div class="w-full flex-none mt-2 order-1 text-3xl fontbold text-violet-600">
    Rp. 22.000.000
   </div>
   <div class="text-sm font-medium text-slate-400">

    </div>
    </div>
   <div class="flex items-baseline mt-4 mb-6 pb-6 border-b borderslate-200">
    {{$item->package_desc}}
    </div>
   <div class="flex space-x-4 mb-5 text-sm font-medium">
    <div class="flex-auto flex space-x-4">
    <button data-bs-toggle="modal" data-bstarget="#exampleModalLg" class="h-10 px-6 font-semibold rounded-full bg-blue-600 text-white border border-slate200 text-slate-900" type="button">
    <a href="/pesanikan" style="border-left-color: black">PESAN</a>
    <button data-bs-toggle="modal" data-bstarget="#exampleModalLg" class="h-10 px-6 font-semibold rounded-full border border-slate200 text-slate-900" type="button">
    Check Availability
   </button>
    </div>
   <button class="flex-none flex items-center justify-center w-9 h9 rounded-full text-violet-600 bg-violet-50" type="button" aria-label="Like">
    <svg width="20" height="20" fill="currentColor" ariahidden="true">
    <path fill-rule="evenodd" cliprule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-
   1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" />
    </svg>
    </button>
   </div>

    </form>
    </div>
    @endforeach

 


<div class=" font-sans pt-8 text-center">
 <a href="#" class="inline-flex items-center py-2 px-4 text-sm fontmedium text-gray-500 bg-white rounded-lg border border-gray-300 hover:bg-gray-100 hover:textgray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray700 dark:hover:text-white">
 Previous
 </a>
 <!-- Next Button -->
 <a href="#" class="inline-flex items-center py-2 px-4 ml-3 text-sm fontmedium text-gray-500 bg-white rounded-lg border border-gray-300 hover:bg-gray-100 hover:textgray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray700 dark:hover:text-white">
 Next
</a>
</div>
 </section>
 </main>
 </div>
 </div>
 </div>
 {{-- modal form untuk cek availibility --}}
 <div class="modal fade fixed top-0 left-0 hidden w-full h-full outline-none overflow-xhidden overflow-y-auto" id="exampleModalLg" tabindex="-1" arialabelledby="exampleModalLgLabel" aria-modal="true" role="dialog">
 <div class="modal-dialog modal-lg relative w-auto pointer-events-none">
 <div class="modal-content border-none shadow-lg relative flex flex-col wfull pointer-events-auto bg-white bg-clip-padding rounded-md outline-none text-current">
 @include('frontpage.calendar')
 </div>
 </div>
 </div>
 </div>