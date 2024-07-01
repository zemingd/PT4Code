x = gets.to_i
arr = []
1.upto(x) do |i|
  if ((i ** (1/2.0)) * 10)%10 == 0 || ((i ** (1/3.0)) * 10)%10 == 0
    arr << i
  end
end
p arr.max
