n = gets.to_i
ary = []
3.upto(n) do |i|
  if (i % 3 == 0)
    ary << i
  end
  x = i / 10
  while x < 10
    if (x % 10 == 3)
      ary << x
    end
    x = i / 10
  end
end
puts  ary.join(" ")