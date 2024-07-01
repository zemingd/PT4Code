a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i

ans = 0
(0..a).to_a.each do |ai|
  (0..b).to_a.each do |bi|
    (0..c).to_a.each do |ci|
      ans += 1 if 500*ai + 100*bi + 50*ci == x
    end
  end
end

puts ans
