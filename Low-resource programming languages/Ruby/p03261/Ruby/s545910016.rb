N = gets.to_i

words = []
ok = true
N.times do |i|
  word = gets.chomp
  ok = false if i > 0 && (words.include?(word) || word[0] != words[i-1][-1])
  words << word
end

if ok
  puts 'Yes'
else
  puts 'No'
end