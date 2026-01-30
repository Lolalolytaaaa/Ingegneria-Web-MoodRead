<script setup lang="ts">
import { ref, computed } from 'vue';
const reviews = ref([
  {
    id: 1,
    bookTitle: "L'uomo che piantava gli alberi (di Jean Giono)",
    user: "amo_leggere94",
    text: "Ho amato molto questo libro, mi ha aiutato a migliorare me stessa e a cancellare definitivamente cattive abitudini.",
    mood: "Felice"
  },
  {
    id: 2,
    bookTitle: "Fahrenheit 451 (di Ray Bradbury)",
    user: "lettrice.17",
    text: "Una lettura potente che fa riflettere sull'importanza della cultura e della memoria. Mi ha scosso profondamente.",
    mood: "Triste"
  },
  {
    id: 3,
    bookTitle: "Il Piccolo Principe (di Antoine de Saint-Exupéry)",
    user: "sognatore_blu",
    text: "Rileggerlo da adulti è un'esperienza completamente diversa. Un balsamo per l'anima.",
    mood: "Innamorato"
  },
  {
    id: 4,
    bookTitle: "Il Conte di Montecristo (di Alexandre Dumas)",
    user: "avenger_99",
    text: "Leggere di Edmond Dantès mi ha dato una carica pazzesca! Non ho mai letto un romanzo così avvincente, ora mi sento invincibile.",
    mood: "Carico"
  },
  {
    id: 5,
    bookTitle: "1984 (di George Orwell)",
    user: "rib_ella",
    text: "È spaventoso quanto questo libro, scritto decenni fa, sembri una cronaca del nostro presente.",
    mood: "Arrabbiato"
  },
  {
    id: 6,
    bookTitle: "Guida galattica per gli autostoppisti (di Douglas Adams)",
    user: "cosmo_gatto",
    text: "Ho riso fino alle lacrime. L'ironia di Adams è insuperabile, l'umorismo perfetto per svoltare una giornata grigia.",
    mood: "Divertito"
  },
  {
    id: 7,
    bookTitle: "Orgoglio e Pregiudizio (di Jane Austen)",
    user: "leggi_troppo",
    text: "Lo so che è un classico, ma io mi sono annoiato a morte. Troppi balli, troppi pettegolezzi e poca azione per i miei gusti.",
    mood: "Annoiato"
  },
  {
    id: 8,
    bookTitle: "L'Alchimista (di Paulo Coelho)",
    user: "neutrale_86",
    text: "È un libro carino, si legge in fretta, ma non mi ha lasciato nulla di particolare dentro.",
    mood: "Indifferente"
  },
  {
    id: 9,
    bookTitle: "Shining (di Stephen King)",
    user: "notte_insonne",
    text: "L'ansia che mi ha trasmesso questo libro è indescrivibile. Il senso di isolamento dell'Overlook Hotel mi ha tolto il respiro (e il sonno!).",
    mood: "Ansioso"
  },
  {
    id: 10,
    bookTitle: "Cecità (di José Saramago)",
    user: "ombraTriste",
    text: "Un pugno nello stomaco. Incredibile leggere di cosa è capace l'essere umano quando perde la sua umanità.",
    mood: "Malumore"
  }
]);

const moods = ['Tutti', 'Felice', 'Carico', 'Triste', 'Arrabbiato', 'Divertito', 'Annoiato', 'Indifferente', 'Ansioso', 'Innamorato', 'Malumore'];
const selectedMood = ref('Tutti');
const showWriteInput = ref(false); 
const filteredReviews = computed(() => {
  if (selectedMood.value === 'Tutti') return reviews.value;
  return reviews.value.filter(r => r.mood === selectedMood.value);
});
</script>

<template>
  <div class="pt-24 min-h-screen bg-white px-4 pb-20">
    
    <div class="text-center mb-6">
       <h1 class="font-display text-5xl mb-6 text-mood-dark">Forum recensioni</h1>
    </div>

    <div class="max-w-5xl mx-auto mb-10">
      <div class="border-2 border-mood-dark rounded-full p-2 flex items-center justify-between shadow-sm bg-white">
        
        <div class="flex gap-2 overflow-x-auto scrollbar-hide px-2 items-center flex-1">
          <button 
            v-for="mood in moods" 
            :key="mood"
            @click="selectedMood = mood"
            class="whitespace-nowrap px-4 py-1 rounded-full font-display text-xl transition-colors"
            :class="selectedMood === mood ? 'bg-mood-dark text-white' : 'text-mood-dark hover:bg-mood-light/20'"
          >
            {{ mood }}
          </button>
        </div>

        <button @click="showWriteInput = !showWriteInput" class="bg-mood-light/20 text-mood-dark px-6 py-1 rounded-full font-display text-2xl flex items-center gap-2 hover:bg-mood-dark hover:text-white transition-colors border-l-2 border-mood-dark ml-2">
          Scrivi ✏️
        </button>
      </div>

      <div v-if="showWriteInput" class="mt-4 bg-white border-2 border-mood-dark rounded-xl p-4 shadow-lg animate-fade-in relative z-10">
          <div class="mb-2">
              <input type="text" placeholder="Titolo del libro..." class="w-full font-display text-2xl border-b border-gray-300 outline-none focus:border-mood-dark text-mood-dark placeholder-mood-dark/50">
          </div>
          <textarea placeholder="Scrivi la tua recensione qui..." class="w-full font-body p-2 outline-none text-gray-700 h-24 resize-none"></textarea>
          <div class="flex justify-end">
              <button @click="showWriteInput = false" class="bg-mood-dark text-white font-display text-xl px-6 py-1 rounded-full hover:scale-105 transition">Invia</button>
          </div>
      </div>
    </div>

    <div class="max-w-4xl mx-auto flex flex-col gap-8">
      
      <div v-for="review in filteredReviews" :key="review.id" class="relative group">
        
        <div class="bg-mood-dark rounded-[2.5rem] p-6 pt-12 pb-8 shadow-xl relative mt-6">
          
          <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-4 gap-4 px-2">
             <div class="bg-white/20 px-4 py-1 rounded-full">
                 <span class="text-white font-display text-xl">su "{{ review.bookTitle }}"</span>
             </div>
             
             <div class="bg-white/20 px-4 py-1 rounded-full self-end md:self-auto">
                 <span class="text-white font-display text-xl">{{ review.user }}</span>
             </div>
          </div>

          <div class="bg-white rounded-2xl p-6 min-h-[100px] flex items-center shadow-inner">
            <p class="font-display text-2xl text-mood-dark leading-relaxed w-full text-left">
              {{ review.text }}
            </p>
          </div>

        </div>
      </div>

    </div>

  </div>
</template>

<style scoped>
.scrollbar-hide::-webkit-scrollbar {
    display: none;
}
.scrollbar-hide {
    -ms-overflow-style: none;
    scrollbar-width: none;
}
</style>
