nInputs = gets.to_i
nInputs.times do
  a = gets.to_i
  b = gets.to_i
  c = a + b
  puts (c.to_s.size <= 80) ? c : "overflow"
end