n = gets.to_i

n.times do
  x = gets.to_i + gets.to_i
  puts (x < 10**80) ? x : "overflow"
end