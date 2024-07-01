require "complex"
x = gets.to_i
(1..x).reverse_each do |i|
  c1 = Math.sqrt(i)
  c2 = Math.sqrt(i).floor
  if c1 == c2 then
    print("#{i}\n")
    break
  end
end