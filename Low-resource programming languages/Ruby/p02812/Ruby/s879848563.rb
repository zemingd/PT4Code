n = gets.to_i
s = gets.chomp.chars
k = 3
words = []
count = 0

(0..s.length-k-1).each do |i|
  words.push(s[i..i+k-1])
end

words.each do |word|
  if word.join == 'ABC'
    count += 1
  end
end

puts count