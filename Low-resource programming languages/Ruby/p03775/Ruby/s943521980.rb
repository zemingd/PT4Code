n = gets.to_i
min_digits = 20

Math.sqrt(n).floor.downto(1) do |i|
  next unless n % i == 0
  digits = [i.to_s.length, (n/i).to_s.length].max
  min_digits = digits if min_digits > digits
end
puts min_digits