n = gets.to_i
s = gets.chomp

answer = 0

s.chars.each_with_index do |char, i|
  answer += 1 if char == 'A' && s[i + 1] == 'B' && s[i + 2] =='C'
end

puts answer
