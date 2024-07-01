N = gets.to_i
a = []
5.times do
  a.push(gets.to_i)
end

s = N.quo(a.min).ceil

puts s + 4