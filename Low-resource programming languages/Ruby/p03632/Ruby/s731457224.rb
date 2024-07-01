a,b,c,d = gets.chomp.split.map(&:to_i)

start = [a, c]
endd = [b, d]

if endd.min - start.max > 0
  puts endd.min - start.max
else
  puts 0
end
