a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
i = 0
(0..a).times do |i|
  (0..b).times do |k|
    (0..c).times do |j|
      if i*500 + k*100 + j*50 == x
        i ++
      end
    end
  end
end

puts i