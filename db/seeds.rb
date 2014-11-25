words = File.open('words')

  words.each do |word|
  w = word.chomp

Word.create(text: w, jumbled_text: w.downcase.chars.sort.join)
end