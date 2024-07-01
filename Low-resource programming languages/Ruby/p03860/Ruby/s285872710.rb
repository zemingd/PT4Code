def contenst(word)
  word = word.gsub(/AtCoder /,"")
  puts "A#{word[0]}C"
end

word = gets.chomp.to_s
contenst(word)