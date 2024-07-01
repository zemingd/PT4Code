digits = gets.strip.split('').map(&:to_i)

min = 1000
(0..digits.size-3).each do |i|
  diff = (digits[i] * 100 + digits[i+1] * 10 + digits[i+2] - 753).abs
  min = diff if diff < min
end

puts min
