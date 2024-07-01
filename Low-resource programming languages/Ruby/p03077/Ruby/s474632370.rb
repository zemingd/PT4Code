n = gets.to_i
a = Array.new
5.times do
  a << gets.to_i
end

m = a.min
answer = 5 + (n / m)
puts answer
