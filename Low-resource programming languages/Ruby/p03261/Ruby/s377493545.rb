n = gets.chomp.to_i
ary = []
n.times do
  ary << gets.chomp
end
# p ary

words = []
end_word = "."
flag = false
ary.each do |word|
  if words.include?(word)
    flag = true
    # puts(word)
    break
  end
  if !(end_word == '.' or word[0] == end_word)
    # puts(word)
    flag = true
    break
  else
    end_word = word[-1]
  end
  words << word
end

if flag
  puts "No"
else
  puts "Yes"
end
