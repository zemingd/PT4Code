a_500 = gets.to_i
b_100 = gets.to_i
c_50 = gets.to_i
x = gets.to_i
cnt = 0
money = 0

(0..a_500).each do |a|
  (0..b_100).each do |b|
    (0..c_50).each do |c|
      cnt += 1 if a * 500 + b * 100 + c * 50 == x 
    end
  end
end

puts cnt