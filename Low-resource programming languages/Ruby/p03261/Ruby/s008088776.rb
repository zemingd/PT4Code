n = gets.to_i
words = []
word = gets.chomp
preChar = word[-1]
words.push(word)
result = true
1.upto n-1 do|i|
  word = gets.chomp
  if preChar != word[0] then
    result = false
    break
  end
  preChar = word[-1]
  words.push(word)
end
if words.size != words.uniq.size then
  result = false
end
if result then
  puts "Yes"
else
  puts "No"
end
