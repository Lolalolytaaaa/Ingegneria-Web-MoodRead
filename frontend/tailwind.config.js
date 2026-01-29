/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'mood-dark': '#2E6329',   
        'mood-light': '#4C8A42', 
        'mood-bg': '#FDFDFD',
        'mood-accent': '#8DAF7E',
      },
      fontFamily: {
        // GFS DIDOT PER TUTTO IL SITO (Eleganza classica)
        'display': ['"GFS Didot"', 'serif'], 
        'body': ['"GFS Didot"', 'serif'], 
      },
      borderRadius: {
        'xl': '1rem',
        '3xl': '2rem', 
      }
    },
  },
  plugins: [],
}