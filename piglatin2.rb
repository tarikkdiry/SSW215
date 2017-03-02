#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System

def translatePigLatin(w)
  words = w.split
  translate = []
  words.each do |word|

  if word[0] =~ /[aeiou]/
    word = word + 'ay'
  else
    word = word[word.index(/[aeiou]/) .. word.length - 1] + word[0 .. word.index(/[aeiou]/) - 1] + 'ay'
  end

  translate << word
end
  translate.join ''
end


puts translatePigLatin "hello"
