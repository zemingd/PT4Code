n = gets.chomp.to_i

if n.zero?
  puts 1
  exit 0
end

puts ((n - 1) * Rational(1, 2) * n).to_i