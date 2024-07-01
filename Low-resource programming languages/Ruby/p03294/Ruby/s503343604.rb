def f(m, arr)
  result = 0
  arr.each do |n|
    result+=m % n
  end
  result
end
z = $stdin.read.split("\n")
b = z[1].split(" ").map{|c| c.to_i}
result = 1
b.each do |a|
  result*=a
end
puts f(result - 1, b)