get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/chicken' do
  erb :chicken
end

get '/*' do
   word = request.path.delete('/')
  list_anagrams = Word.anagrams(word)


  erb :anagram, locals: {word: word, word_anagrams: list_anagrams}
end