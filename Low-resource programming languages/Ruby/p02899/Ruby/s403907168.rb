n = gets.to_i
a = gets.split.map(&:to_i)
ans = []
b = 1
a.each do |i|
  ans[i-1] = b
  b+=1
end
puts ans.join(" ")
