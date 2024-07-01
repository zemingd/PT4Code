W, H, N = gets.chomp.split(" ").map(&:to_i)
ans = [[0, 0], [W, H]]
N.times{
  x, y, a = gets.chomp.split(" ").map(&:to_i)
  case a
  when 1
    ans[0][0] = x if ans[0][0] < x
  when 2
    ans[1][0] = x if ans[1][0] > x
  when 3
    ans[0][1] = y if ans[0][1] < y
  when 4
    ans[1][1] = y if ans[1][1] > y
  end
}

if (ans[1][0] - ans[0][0]) < 0 || (ans[1][1] - ans[0][1]) < 0 then
  puts 0
else
  puts (ans[1][0] - ans[0][0]) * (ans[1][1] - ans[0][1])
end
