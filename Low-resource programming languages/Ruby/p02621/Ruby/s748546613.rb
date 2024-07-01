a = gets.to_i
s = a
2.times do
  s = (s + a) * a
end
puts s