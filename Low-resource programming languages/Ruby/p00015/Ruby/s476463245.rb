n = gets.to_i

for i in 1..n
  a = gets.to_i
  b = gets.to_i
  puts 80 < (a + b).to_s.length ? "overflow" : a + b
end