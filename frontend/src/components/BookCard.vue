<script setup lang="ts">
defineProps<{ title: string, author: string, quote: string, description: string, coverImage: string }>();
</script>

<template>
  <div class="relative w-full max-w-5xl mx-auto my-10 group px-4">
    <div class="bg-mood-dark rounded-[3rem] p-8 md:pl-32 md:pr-12 md:py-12 relative shadow-xl md:ml-24 min-h-[400px] flex flex-col justify-center">
      
      <div class="bg-white rounded-full py-2 px-8 absolute -top-6 left-1/4 right-8 shadow-sm border border-mood-dark z-10 flex justify-center items-center">
        <h3 class="font-display text-3xl md:text-2xl text-mood-dark truncate mt-2">{{ title }} (Di {{ author }})</h3>
      </div>

      <div class="bg-mood-accent/30 rounded-3xl p-6 border border-white/10">
        <p class="text-white font-body text-2xl leading-relaxed text-center ">"{{ quote }}"</p>
      </div>
      <br>
      <div class="bg-mood-accent/30 rounded-2xl p-4 border border-white/10">
        <p class="text-white font-body text-xl tracking-wide leading-snug">{{ description }}</p>
      </div>
    </div>

    <div class="hidden md:block absolute top-1/2 -translate-y-1/2 left-0 w-56 shadow-2xl rounded-lg overflow-hidden transform group-hover:-translate-y-[60%] transition-transform duration-500">
      <img :src="coverImage" alt="Book Cover" class="w-full h-auto object-cover" />
      <div class="absolute bottom-0 w-full h-4 bg-gray-200"></div>
    </div>
  </div>
</template>