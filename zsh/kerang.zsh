# Fungsi Kerang Ajaib untuk si pemuja setia 🐚
# Ketik 'kerang-ajaib' di terminal untuk mendapatkan jawaban!

kerang-ajaib() {
  local responses=(
    "Mungkin suatu hari nanti."
    "Tidak ada."
    "Aku rasa tidak."
    "Coba tanya lagi."
    "Duduklah."
    "Jangan lakukan apa pun."
    "Tanyakan lagi nanti."
    "Tetaplah seperti itu."
    "Kenapa tidak?"
  )
  
  # Ambil jawaban secara acak
  local index=$((RANDOM % ${#responses[@]} + 1))
  local answer="${responses[$index]}"
  
  echo -e "\033[1;35m🐚 Kerang Ajaib berkata:\033[0m $answer"
}

# Alias biar gak capek ngetiknya
alias kerang="kerang-ajaib"
