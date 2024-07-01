n = gets.to_i
ary = []
3.upto(n) do |i|
  if (i % 3 == 0)
    ary << i
  else (i % 10 == 3)
    ary << i
  end
end
puts  ary.join(" ")