tax_rate_a, tax_rate_b = gets.chomp.split.map(&:to_i)

ans_a = (tax_rate_a / 0.08).floor
ans_b = (tax_rate_b / 0.1).floor

if ans_a == ans_b
  puts ans_b
else
  puts -1
end