@vite(['resources/css/app.css', 'resources/js/app.js'])
<div class="max-w-auto mx-auto sm:px-6 lg:px-8 dark:bg-gray-500">
    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

        <div class="p-6 bg-white border-b border-gray-200 dark:bg-gray-200 ">
            <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                <div class="flex items-baseline justify-between border-b border-gray200 pt-2 pb-6">
                    <h1 class="text-4xl font-bold tracking-tight text-gray900">Pemesanan Barang</h1>
                </div>
                <section>
                    <div class="flex justify-around md:justify-around py-5">
                        <div class="grid md:grid-cols-3 grid-cols-1 gap-6">

                            <!-- =============== CONTENT 1 ============== -->
                            <div class="font-sans pt-8 border-slate-200">
                                <div class="max-w-sm">
                                    <div class="">
                                        <img src="https://th.bing.com/th/id/OIP.hfVFgty4zvGpetKtNtHuJQHaHa?pid=ImgDet&rs=1"
                                            alt="" class="md:h-80 md:w-56 inset-0 object-cover rounded-lg"
                                            loading="lazy" />
                                    </div>
                                    <form class="pt-6">
                                        <div class="flex flex-wrap">
                                            <h1 class="flex font-medium text-slate-900">
                                                kamera cannon
                                            </h1>

                                        </div>
                                       
                                        <div class="w-full flex-none order-5 text-3xl fontbold text-violet-600">
                                            Rp.22.000.000
                                        </div>
                                        <button
                                            class="bg-violet-400 font-semibold hover:bg-violet-800 py-3 text-sm text-white  w-full">
                                            Masukkan Keranjang
                                        </button>

                                    </form>
                                </div>
                            </div>
                            <!-- =============== CONTENT 2 ============== -->
                            <!--<div class="font-sans pt-8 border-slate-200">
                                <div class="max-w-sm">
                                    <div class="md:shrink-0">
                                        <img src="https://th.bing.com/th/id/OIP.E114q02FhR11DUEfgeJZTgHaHx?pid=ImgDet&rs=1.jpg"
                                            alt="" class="md:h-80 md:w-56 inset-0 object-cover rounded-lg"
                                            loading="lazy" />
                                    </div>
                                    <form class="pt-6">
                                        <div class="flex flex-wrap">
                                            <h1 class="flex font-medium text-slate-900">
                                                kamera nikon
                                            </h1>
                                            <div class="flex space-x-4 mt-1 text-sm font-medium">

                                            </div>
                                        </div>
                                    
                                        <div class="w-full flex-none order-1 text-3xl fontbold text-violet-600">
                                            -Rp. 50.000-
                                        </div>
                                        <div
                                            class="w-full flex-none order-1 text-3xl textbold uppercase fontbold text-red-600">
                                            NOT Available
                                        </div>
                                        <button
                                            class="flex-auto h-10 px-6 my-10 font-semibold rounded-full text-slate-200 border border-slate-500 dark:text-white hover:bg-violet-800 hover:border-none">
                                            Masukkan Keranjang
                                        </button>
                                    </form>
                                </div>
                            </div>-->

                            
                        <div class="relative ">


                            <h1 class=" font-semibold text-2xl my-2">Identitas Ordering </h1>

                            <input type="text" id="Nama" placeholder="Nama Anda"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-2 text-sm w-full">
                            <input type="text" id="NIK" placeholder="NIK"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-2 text-sm w-full">
                            <input type="text" id="alamat" placeholder="Alamat"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-10 text-sm w-full">

                            <h1 class=" font-semibold text-2xl my-5"> Pesan </h1> 

                            <!-- ==== CONTENT 1 ==== -->
                            <div class="flex justify-between mt-5 mb-5">
                                <span class="font-sans text-sm ">kamera</span>
                                <span class="font-semibold text-sm">Rp 22.000.000</span>

                            </div>
                            <div class="lex justify-between mt-5 mb-5">
                                <span
                                    class="px-5 font-sans text-sm rounded-full border border-slate-400 hover:bg-violet-600 hover:text-slate-200">delete</span>
                                <span
                                    class="px-5 font-sans text-sm rounded-full border border-slate-400 hover:bg-violet-600 hover:text-slate-200">tambah</span>
                            </div>
                            
                            

                            <div class="my-auto mx-auto">
                                <span
                                    class="px-5 font-sans text-sm rounded-full border border-slate-400 hover:bg-violet-600 hover:text-slate-200">delete</span>
                                <span
                                    class="px-5 font-sans text-sm rounded-full border border-slate-400 hover:bg-violet-600 hover:text-slate-200">tambah</span>
                            </div>


                            <div class="pt-20">
                                <label for="promo" class="font-semibold inline-block mb-3 text-sm ">Promo
                                    Code</label>
                                <input type="text" id="promo" placeholder="Enter your Promo"
                                    class="  focus:ring-blue-500 focus:border-blue-400 block wful p-2 text-sm w-full">
                            </div>

                            <button
                                class="bg-slate-400 hover:bg-violet-600 px-5 py-2 mt-2 text-sm text-white">Use</button>
                            <div class="border-t mt-4">
                                <div class="flex font-semibold justify-between py-6 text-sm ">
                                    <span>Total</span>
                                    <span>Rp 300.000</span>
                                </div>
                                <button
                                    class="bg-violet-400 font-semibold hover:bg-violet-900 py-3 text-sm text-white  w-full">Checkout</button>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
        </div>
    </div>
</div>
</div>