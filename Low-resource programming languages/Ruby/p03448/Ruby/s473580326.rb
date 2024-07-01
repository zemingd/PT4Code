a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0
(0..a).each do |ia|
  (0..b).each do |ib|
    (0..c).each do |ic|
      if ia * 500 + ib * 100 + ic * 50 == x
        count += 1
      end
    end
  end
end
 
puts count