def price_without_tax(tax_8, tax_10)
  return -1 unless tax_10.between?(1, 100)
  return -1 unless tax_8.between?(1, 100)

  avalil_tax_8 = [*(tax_8 / 0.08).ceil...((tax_8 + 1) / 0.08)]
  avalil_tax_10 = [*(tax_10 / 0.10).ceil...((tax_10 + 1) / 0.10)]

  (avalil_tax_8 & avalil_tax_10)[0] || -1
end

tax_8, tax_10 = gets.chomp!.split(' ').map(&:to_i)
puts price_without_tax(tax_8, tax_10)