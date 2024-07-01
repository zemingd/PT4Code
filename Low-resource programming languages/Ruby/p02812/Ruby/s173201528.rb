n = gets.to_i
s = gets.chomp.to_s

i = 0
counter = 0
loop do
  counter += 1 if s[i..i+2] == 'ABC'
  i += 1
end

puts counter
