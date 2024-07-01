n = gets.to_i
a = gets.split.map(&:to_i)
ans = []
1.upto(n) do |i|
  ans << a.index(i).to_i+1
end
puts ans.join(" ")