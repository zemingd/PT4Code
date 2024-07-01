# frozen_string_literal: true

roop = gets.to_i

words = []

roop.times { |_cnt| words.push(gets.chomp) }

def anagram?(word, sub_word)
  sub_array = sub_word.split('')
  sub_array.each do |ch|
    sub_c = sub_word.count(ch)

    word_c = word.count(ch)

    return false if sub_c != word_c
  end
  true
end

def count_anagrams(word, array)
  cnt = 0

  array.each do |sub|
    cnt += 1 if anagram?(word, sub)
  end
  cnt
end

count = 0

(roop - 1).times do |_cnt|
  word = words[0]

  words.slice!(0, 1)

  count += count_anagrams(word, words)
end

puts count
