a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0
(0..a).each do |an|
  (0..b).each do |bn|
    (0..c).each do |cn|
      total = 500*an + 100*bn + 50*cn
      count += 1 if total == x
    end
  end
end
puts count