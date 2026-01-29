<template>
  <div class="min-h-screen bg-white flex flex-col items-center justify-center">
    
    <h1 class="text-mood-dark font-display text-5xl mb-6">Login</h1>

    <div class="bg-mood-dark w-full max-w-md p-8 rounded-[3rem] relative shadow-2xl">
      
      <div class="absolute -top-2 right-12 w-10 h-14 bg-white shadow-md z-10 flex items-end justify-center">
          <div class="w-0 h-0 border-l-[20px] border-l-transparent border-r-[20px] border-r-transparent border-b-[15px] border-b-mood-dark absolute bottom-0"></div>
      </div>

      <form class="flex flex-col gap-6 mt-4">
        <div class="bg-white/20 rounded-2xl p-4 flex flex-col">
          <label class="text-white font-display text-2xl ml-1">Username</label>
          <input type="text" class="bg-transparent border-none outline-none text-white font-body px-1 text-lg w-full" />
        </div>

        <div class="bg-white/20 rounded-2xl p-4 flex flex-col">
          <label class="text-white font-display text-2xl ml-1">Password</label>
          <input type="password" class="bg-transparent border-none outline-none text-white font-body px-1 text-lg w-full" />
        </div>

        <div class="flex justify-center mt-4">
          <button class="bg-white text-mood-dark font-display text-2xl uppercase px-12 py-2 rounded-full shadow hover:scale-105 transition">
            Login
          </button>
        </div>

        <div class="mt-2 text-center">
            <p class="text-white font-display text-xl">
                Non hai un account? 
                <router-link to="/register" class="underline hover:text-white/80 ml-1">
                 REGISTRATI
                </router-link>
            </p>
        </div>

      </form>
    </div>
  </div>
</template>