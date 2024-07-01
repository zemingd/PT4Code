a = STDIN.gets.chomp.to_i
res = []

loop do
  break if a <= 0

  b = a % 10
  a -= b.zero? ? 10 : b
  res << b
end

(4 - res.size).times.each { res << 0 }

case res.uniq.size
when 1
  puts 1
when 2
  puts 4
when 3
  puts 12
else
  puts 24
end