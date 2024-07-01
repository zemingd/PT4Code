n = gets.chomp.to_i
s = gets.chomp

sum = 0
char = ""
s.each_char do |c|
  sum +=1 if char != c
  char = c
end

puts sum