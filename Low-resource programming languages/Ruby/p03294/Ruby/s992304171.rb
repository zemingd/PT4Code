def f(m, arr)
  result = 0
  arr.each do |n|
    result+=m % n
  end
  result
end
z = $stdin.read.split("\n")
b = z[1].split(" ").map{|c| c.to_i}
b_max = b.max
i = 0
result = 0
loop do
  a1 = f(i, b)
  if a1 > result
    result = a1
  end
  if i == b_max*900
    break
  end
  i+=1
end
p result