a, b = gets.chomp.split(' ').map(&:to_i)

eight_tax_price = (a / 0.08).floor
ten_tax_price = (b / 0.1).floor

eight_is_true = false
ten_is_true = false

eight_is_true = true if (eight_tax_price * 0.1).floor == b
ten_is_true = true if (ten_tax_price * 0.08).floor == a

if eight_tax_price === ten_tax_price
  puts eight_tax_price
elsif eight_is_true && ten_is_true
  puts eight_is_true <= ten_is_true ? eight_is_true : ten_is_true
elsif eight_is_true
  puts eight_tax_price
elsif ten_is_true
  puts ten_tax_price
else
  puts -1
end