n = gets.to_i
as = gets.split.map(&:to_i)

balls = []
(n-1).downto(0) do |i|
  if as[i].even?
    balls.unshift(0)
  else
    balls.unshift(1)
  end
end

puts balls.count(1)
ans = []
balls.each_with_index do |ball, i|
  if ball == 1
    ans << i + 1
  end
end
if ans.empty?
  puts 0
else
  puts ans.join(" ")
end