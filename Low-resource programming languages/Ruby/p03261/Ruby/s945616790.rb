n = gets.to_i
wordArray = []
num = 0
n.times do
  word = gets.chomp
  wordArray.push(word)
end

ok1 = false
ok2 = false

if wordArray.count == wordArray.uniq.count
  ok1 = true
end

(1..n-1).each do |w|
  if wordArray[w-1][-1] == wordArray[w][0]
    ok2 = true
  else
    ok2 = false
    break
  end
end

if ok1 && ok2
  puts "Yes"
else
  puts "No"
end