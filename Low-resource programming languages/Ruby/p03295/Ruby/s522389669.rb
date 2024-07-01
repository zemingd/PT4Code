INF = 10 ** 7
n, m = gets.split.map(&:to_i)
desires = []
m.times { desires << gets.split.map(&:to_i) }
desires.sort!
right = INF
ans = 0
desires.each do |a, b|
  if a >= right
    ans += 1
    right = INF
  end
  right = b if right > b
ans += 1
puts ans
