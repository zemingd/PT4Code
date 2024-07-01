def cal(a, b)
  sum = 0
  a.each_with_index do |n,i|
    sum += (n - (b+i+1)).abs
  end
  sum
end
n = $stdin.read

n = n.split("\n")
a = n[1].split(" ").map{|b| b.to_i }
max = a.max
result = nil
(-max..max).each do |m|
  temp = cal(a, m)
  if result.nil?
    result = cal(a, m)
  else
    result = temp if result > temp
  end
end
p result