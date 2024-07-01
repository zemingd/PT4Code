a,b,c = gets.split.map(&:to_i)
k = gets.to_i
ar = [a,b,c].sort!

k.times do
   ar[-1] = ar[-1]*2
end

puts ar.inject(&:+)