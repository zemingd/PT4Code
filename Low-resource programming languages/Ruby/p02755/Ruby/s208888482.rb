a, b = gets.chomp.split.map(&:to_i)
flag = false
money = 0
price = []
if a.even?
  aprice_low = a * 25 / 2
  (0..12).each do |i|
    price.push(aprice_low + i)
  end
else
  aprice_low = a * 25 / 2 + 1
  (0..11).each do |i|
    price.push(aprice_low + i)
  end
end

bprice_low = b * 10

(0..9).each do |i|
  if price.include?(bprice_low + i)
    money = bprice_low + i
    flag = true
    break
  end
  price.push(bprice_low + i)
end

if flag
  puts money
else
	puts -1
end