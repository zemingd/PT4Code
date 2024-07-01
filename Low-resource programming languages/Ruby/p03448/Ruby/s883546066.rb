a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0
(0..a).each do |a|
  (0..b).each do |b|
    (0..c).each do |c|
      count += 1 if 500 * a + 100 * b + 50 * c == x
    end
  end
end
puts count