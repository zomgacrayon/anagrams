

class Word < ActiveRecord::Base
  def self.anagrams(word)
    Word.where(jumbled_text: word.downcase.chars.sort.join).pluck(:text)
  end
end


# localhost/apple

# request.path => /apple

# word = apple

# Word.anagrams(word)

# apple =>  aelpp
# Word.where(sorted_text: aelpp).puck(:text)
# id text sorted_text created_at updated_at
# 1 apple aelpp   340349 3209430
# 3 osdiodsf aelpp 3443209 38349
# 5 sdfsdfsd aelpp 309430 3490942303

# select * from words where sorted_text = "aelpp"


# 1 apple aelpp   340349 3209430
# 3 osdiodsf aelpp 3443209 38349
# 5 sdfsdfsd aelpp 309430 3490942303

# select text from words where sorted_text = "aelpp"
# apple
# osdiodsf
# sdfsdfsd

# Word.where(sorted_text: aelpp).puck(:text)
# ["apple",
# "osdiodsf",
# "sdfsdfsd"]