d, n = gets.split.map(&:to_i)

if d.zero?
  p n
elsif d == 1
  puts(n.to_s + '00')
else
  puts(n.to_s + '0000')
end
