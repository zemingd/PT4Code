nums = gets.split.map(&:to_i) 
a = nums[0].to_f
b = nums[1].to_f
price_a = a / 0.08
price_b = b / 0.1

if price_a.to_i == price_b.to_i
  puts price_a.to_i
else
  if (price_a * 0.1).to_i == b
    p price_a.to_i
  elsif (price_b * 0.08).to_i == a
    p price_b.to_i
  else
    puts -1
  end
end