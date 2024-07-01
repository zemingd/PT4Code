n = gets.to_i
min = 11

1.upto(Math.sqrt(n)) do |i|
  next if n % i != 0

  tmp = [i.to_s.size, (n / i).to_s.size].max
  min = tmp if min > tmp
end

puts min