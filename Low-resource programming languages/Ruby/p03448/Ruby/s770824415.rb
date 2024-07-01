a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

ans = 0

(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      ans += 1 if x == 500 * i + 100 * j + 50 * k
    end
  end
end

puts ans
