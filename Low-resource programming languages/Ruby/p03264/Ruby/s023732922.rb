k = gets.to_i
a = [*1..k]
odd = []
even = []
a.each do |i|
  if i % 2 == 0
    even << i
  else
    odd << i
  end
end
puts even.product(odd).count
