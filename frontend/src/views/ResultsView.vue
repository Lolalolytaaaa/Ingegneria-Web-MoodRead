<script setup lang="ts">
import BookCard from '../components/BookCard.vue';

const recommendedBooks = [
  {
    title: "L'eleganza del riccio",
    author: "Muriel Barbery",
    quote: "Siamo tutti dei ricci. Fuori abbiamo gli aculei, ma dentro siamo morbidi, insicuri e desiderosi di affetto.",
    description: "Un antidoto perfetto contro il cinismo. La storia di due anime solitarie, una portinaia coltissima e una ragazzina geniale, che imparano a trovare la bellezza nelle piccole cose invisibili al resto del mondo.",
    coverImage: "https://covers.openlibrary.org/b/id/10531541-L.jpg"
  },
  {
    title: "La campana di vetro",
    author: "Sylvia Plath",
    quote: "Feci un respiro profondo e ascoltai il vecchio vanto del mio cuore. Io sono, io sono, io sono.",
    description: "Una lettura cruda ma incredibilmente catartica per chi vive un momento di ansia o smarrimento giovanile. Mostra la discesa nel buio, ma anche la potente pulsione di vita che ci spinge a tornare a respirare.",
    coverImage: "https://covers.openlibrary.org/b/id/8231846-L.jpg"
  },
  {
    title: "Il barone rampante",
    author: "Italo Calvino",
    quote: "Chi vuole guardare bene la terra deve tenersi alla distanza necessaria.",
    description: "Per chi si sente soffocare dalle regole e dalla società. La storia di Cosimo che decide di vivere sugli alberi per tutta la vita è un inno alla ribellione sana, all'anticonformismo e alla fedeltà verso se stessi.",
    coverImage: "https://covers.openlibrary.org/b/id/8381830-L.jpg"
  },
  {
    title: "Norwegian Wood",
    author: "Haruki Murakami",
    quote: "Se sei nel buio, non ti resta che aspettare, fermo, che i tuoi occhi si abituino all'oscurità.",
    description: "Il libro per curare la nostalgia e il dolore della crescita. Un viaggio malinconico ma dolcissimo tra le nebbie del passato, che insegna ad accettare le ferite dell'amore come parte del diventare adulti.",
    coverImage: "https://covers.openlibrary.org/b/id/8446002-L.jpg"
  },
  {
    title: "L'arte della gioia",
    author: "Goliarda Sapienza",
    quote: "Non si può possedere un tramonto, così come non si può possedere un amore o la felicità.",
    description: "Una sferzata di energia per ritrovare la vitalità. La protagonista, Modesta, è una donna indomabile che attraversa il Novecento sfidando ogni morale pur di conquistare la propria felicità carnale e intellettuale.",
    coverImage: "https://covers.openlibrary.org/b/id/8710502-L.jpg"
  }
];
</script>

<template>
  <div class="pt-12 pb-24 px-4 min-h-screen bg-white">
    
    <div class="max-w-5xl mx-auto text-center mb-16">
      <h1 class="font-display text-5xl text-mood-dark mb-6">Antidoto letterario</h1>
    </div>

    <div class="flex flex-col gap-8">
      <BookCard 
        v-for="(book, index) in recommendedBooks" 
        :key="index"
        :title="book.title"
        :author="book.author"
        :quote="book.quote"
        :description="book.description"
        :coverImage="book.coverImage"
      />
    </div>
  </div>
</template>