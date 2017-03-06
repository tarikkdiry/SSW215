#Tarik Kdiry
#I pledge my honor that I have abided by the Stevens Honor System.
#Credits to Austin Rocha for compiling the dale-chall txt file because I could not download it from Canvas
#Wouldn't aread alice.txt properly so I copied and pasted it in udner variable 'words'

alice_words = "Alice was beginning to get very tired of sitting by her sister on the
bank, and of having nothing to do: once or twice she had peeped into the
book her sister was alice_wordsing, but it had no pictures or conversations in
it, 'and what is the use of a book,' thought Alice 'without pictures or
conversations?'

So she was considering in her own mind (as well as she could, for the
hot day made her feel very sleepy and stupid), whether the pleasure
of making a daisy-chain would be worth the trouble of getting up and
picking the daisies, when suddenly a White Rabbit with pink eyes ran
close by her.

There was nothing so VERY remarkable in that; nor did Alice think it so
VERY much out of the way to hear the Rabbit say to itself, 'Oh dear!
Oh dear! I shall be late!' (when she thought it over afterwards, it
occurred to her that she ought to have wondered at this, but at the time
it all seemed quite natural); but when the Rabbit actually TOOK A WATCH
OUT OF ITS WAISTCOAT-POCKET, and looked at it, and then hurried on,
Alice started to her feet, for it flashed across her mind that she had
never before seen a rabbit with either a waistcoat-pocket, or a watch
to take out of it, and burning with curiosity, she ran across the field
after it, and fortunately was just in time to see it pop down a large
rabbit-hole under the hedge."

sentence_count = alice_words.scan(/[\.!?]/).map(&:strip).count
dale_chall = File.read('dall_chall_words.txt').split("\r")
words = alice_words.split(/\W+/)
count = 0
word_count = words.count
diff_count = 0
letter_count = 0
syllable_count = 0

begin
  if words[count][words[count].length - 1].scan(/([aeiou])/).count > 0 && words[count].length > 1

    syllable_count = syllable_count - 1
  end

  if not dale_chall.include?(words[count])
    diff_count = diff_count + 1
  end
  syllable_count = syllable_count + words[count].scan(/([aeiou])/).count - words[count].scan(/([aeiou]{2})/).count

  letter_count = letter_count + words[count].length

  count = count + 1

end until words.length == count

flesch_kincaid = 0.39 * (word_count/sentence_count) + 11.8 * (syllable_count/word_count) - 15.59
coleman_liau = 5.88 * (letter_count/word_count) - 29.6 * (sentence_count/word_count) - 15.8
dale_chall = 15.79 * (diff_count/word_count) + 0.0496 * (word_count/sentence_count) + 3.6365

puts "Total Sentences: " + sentence_count.to_s
puts "Total Words: " + word_count.to_s
puts "Total Letters: " + letter_count.to_s
puts "Total Syllables: " + syllable_count.to_s
puts "Total Difficult Words: " + diff_count.to_s
puts "Flesch–Kincaid Grade Level Score: " + flesch_kincaid.to_s
puts "Coleman–Liau Index Score: " + coleman_liau.to_s
puts "Dale-Chall Ability Score: " + dale_chall.to_s
