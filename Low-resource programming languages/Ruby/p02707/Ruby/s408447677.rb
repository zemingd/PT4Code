n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n,0)

a.each do |x|
  ans[x-1] += 1
end
ans.each do |x|
  puts x
end