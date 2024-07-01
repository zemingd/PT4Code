def miss(word)
  puts word.gsub(/./, 'x') 
end

word = gets.chomp
miss(word)