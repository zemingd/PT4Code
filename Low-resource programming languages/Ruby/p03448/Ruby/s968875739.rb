a = gets.to_i
b = gets.to_i 
c = gets.to_i
x = gets.to_i
sum = 0
0.upto(a) do |i|
  0.upto(b) do |j|
    0.upto(c) do |k|
      if 500*i + 100*j + 50*k == x
        sum += 1
      end
    end
  end
end
puts sum
