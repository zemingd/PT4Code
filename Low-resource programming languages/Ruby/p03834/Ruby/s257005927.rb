def haiku(word)
  puts word.gsub(/,/," ")
end

word = gets.chomp
haiku(word)