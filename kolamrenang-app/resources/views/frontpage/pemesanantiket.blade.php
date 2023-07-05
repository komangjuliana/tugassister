@vite(['resources/css/app.css', 'resources/js/app.js'])
<div class="max-w-auto mx-auto sm:px-6 lg:px-8 dark:bg-gray-500">
    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

        <div class="p-6 bg-white border-b border-gray-200 dark:bg-gray-200 ">
            <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                <div class="flex items-baseline justify-between border-b border-gray200 pt-2 pb-6">
                    <h1 class="text-4xl font-bold tracking-tight text-gray900">Booking Tiket</h1>
                    
                </div>
                <body>
                    
                <section>
                    <div class="flex justify-around md:justify-around py-5">
                        <div class="grid md:grid-cols-3 grid-cols-1 gap-6">

                            <!-- =============== CONTENT 1 ============== -->
                            <div class="font-sans pt-8 border-slate-200">
                                <div class="max-w-sm">
                                    <div class="">
                                        <img src="https://jadesta.kemenparekraf.go.id/imgpost/58038.jpg"
                                            alt="" class="md:h-80 md:w-56 inset-0 object-cover rounded-lg"
                                            loading="lazy" />
                                    </div>
                                    <form class="pt-6">
                                        <div class="flex flex-wrap">
                                            <h1 class="flex font-medium text-slate-900">
                                                tiket local
                                            </h1>

                                        </div>
                                       
                                        <div class="w-full flex-none order-1 text-3xl fontbold text-violet-600">
                                            Rp.10.000
                                        </div>
                                        <button
                                            class="flex-auto h-10 px-6 my-20 font-semibold rounded-full text-slate-200 border border-slate-500 dark:text-white hover:bg-violet-800 hover:border-none">
                                            Masukkan Keranjang
                                        </button>

                                    </form>
                                </div>
                            </div>
                            
                            
                        <div class="relative ">


                            <h1 class=" font-semibold text-2xl my-2">Identitas Ordering </h1>

                            <input type="text" id="Nama" placeholder="Nama Anda"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-2 text-sm w-full">
                            <input type="text" id="jenis-kelamin" placeholder="Jenis-kelamin"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-2 text-sm w-full">
                            <input type="text" id="no hp" placeholder="No hp"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-2 text-sm w-full">
                            <input type="text" id="alamat" placeholder="Alamat"
                                class="  focus:ring-blue-500 focus:border-blue-400 block  px-10 py-10 text-sm w-full">

                            <h1 class=" font-semibold text-2xl my-5"> Pesan </h1>

                            <!-- ==== CONTENT 1 ==== -->
                            <div class="flex justify-between mt-5 mb-5">
                                

                          

                           
                            
                            <div class="border-t mt-4">
                                <div class="flex font-semibold justify-between py-6 text-sm ">
                                    <span>Total</span>
                                    <span>Rp 10.000</span>
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
</div