d, n = gets.split.map(&:to_i)

if d.zero?
  puts n == 100 ? 101 : n
elsif d == 1
  puts n == 100 ? 10100 : n.to_s + '00'
else
  puts n == 100 ? 1010000 : n.to_s + '0000'
end