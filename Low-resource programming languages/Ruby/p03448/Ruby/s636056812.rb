n500 = gets.to_i
n100 = gets.to_i
n50  = gets.to_i
x = gets.to_i
 
x /= 50
counter = 0
(0..n500).each do
  x_ = x
  (0..n100).each do
    counter += 1 if (x_ <= n50)
    x_ -= 2
  end
  x -= 10
end
puts counter