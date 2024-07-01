a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
r = 0
(0..a).each do |c_500|
  (0..b).each do |c_100|
    (0..c).each do |c_50|
      r+= 1 if x == c_500 * 500 + c_100 * 100 + c_50 * 50
    end
  end
end
puts r
