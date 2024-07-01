n = gets.to_i
ary = []
3.upto(n) do |i|
  if (i % 3 == 0)
    ary << i
  end
  x = i / 10
  while do
    ary << x if (x % 10 == 3) 
    x = x / 10
    break if x < 10
  end
end
puts  ary.join(" ")