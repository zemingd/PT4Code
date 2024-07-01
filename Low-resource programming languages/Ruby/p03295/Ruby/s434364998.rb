N,M = gets.split(" ").map(&:to_i)
c = []
M.times do |i|
  c[i] = gets.split(" ").map(&:to_i)
end
c.sort!
l = c[0][0]; r = c[0][1]
cnt = 1
1.upto(M-1) do |i|
  if c[i][0] < r
    l = c[i][0]
    if r > c[i][1]
      r = c[i][1]
    end
  else
    cnt += 1
    l = c[i][0]; r = c[i][1]
  end
end
puts cnt