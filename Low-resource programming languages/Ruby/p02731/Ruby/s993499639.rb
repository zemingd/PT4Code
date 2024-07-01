l = gets.chomp.to_f
x = y = z = 0
max = ans = 0

0.step(l,0.0001) do |kx|
    ans = kx * ((l - kx)/2)**2
    if ans > max
      max = ans
  end
end

puts max