a, b = gets.split("\s").map(&:to_i)
100 / 0.08
price = -1
1250.times do |i|
  a_i = ((i+1) * 0.08).to_i
  b_i = ((i+1) * 0.1).to_i
  
  if(a_i == a && b_i == b)
    price = i+1
    break
  end
end

puts price