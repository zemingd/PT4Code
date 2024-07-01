# input
n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
ans = 0

# main
n.times do
  a = gets.chomp.split.map(&:to_i)
  solved = 0
  m.times do |i|
    solved += a[i] * b[i]
  end
  if solved + c > 0 then
    ans += 1
  end
end
  
# output
puts ans
