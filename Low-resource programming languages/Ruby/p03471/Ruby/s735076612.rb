N, Y = gets.chomp.split.map(&:to_i)

y10 = Y / 10_000
y5 = (Y - y10 * 10_000) / 5_000
y1 = (Y - (y10 * 10_000 + y5 * 5_000)) / 1_000

total = y10 + y5 + y1
if N < total
  puts "-1 -1 -1"
  exit
end
puts "#{y10} #{y5} #{y1}"