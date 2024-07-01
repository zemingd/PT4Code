s = gets.split.map(&:to_i)
k = gets.to_i

k.times do
  s.sort!
  s[-1] *= 2
end

puts s.inject(:+)