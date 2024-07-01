n, m = gets.split.map(&:to_i)
ans = Array.new(n, 0)
m.times do
  a, b = gets.split.map(&:to_i)
  ans[a - 1] += 1
  ans[b - 1] += 1
end

ans.each{|x| puts x}
