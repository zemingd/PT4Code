a = gets.to_i
b = gets.to_i

([1 ,2, 3] - [a]  - [b]).each do |i|
  p i
end