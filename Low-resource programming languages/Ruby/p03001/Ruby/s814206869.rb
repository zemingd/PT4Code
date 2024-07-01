W, H, x, y = gets.split.map(&:to_i)

area = W * H

tmp1 = [area * (x.to_f/W), area * ((W-x.to_f)/W)].min
tmp2 = [area * (y.to_f/H),area * ((H-y.to_f)/H)].min

# p tmp1, tmp2

if (tmp1 - tmp2).abs <= 10**(-9)
  puts "#{tmp1} 1"
else
  puts "#{[tmp1, tmp2].max} 0"
end
