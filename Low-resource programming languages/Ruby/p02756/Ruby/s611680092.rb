s = gets.chomp
q = gets.to_i
q.times do
  x = gets.split()
  if x[0] == "1"
    s = s.reverse
  elsif x[1] == "1"
    s = x[2] + s
  elsif x[1] == "2"
    s = s + x[2]
  end
end
puts s