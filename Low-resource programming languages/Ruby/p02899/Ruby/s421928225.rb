N = gets.to_i
a = []
a = gets.split.map(&:to_i)
ans = []
N.times do |i|
  ans[a[i]-1] = i+1
end

puts ans.join(" ")