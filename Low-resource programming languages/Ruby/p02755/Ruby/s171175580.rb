def same_price_without_tax?(tax_8, tax_10)
  return -1 unless tax_10.between?(1, 100)
  return -1 unless tax_8.between?(1, 100)

  return -1 unless tax_8 == (tax_10 * (0.08/0.10)).ceil
  (tax_8 / 0.08).ceil
end

tax_8, tax_10 = gets.chomp!.split(' ').map(&:to_i)
p same_price_without_tax?(tax_8, tax_10)