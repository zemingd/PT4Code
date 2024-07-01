W, H, N = gets.chomp.split.map(&:to_i)

ans = W * H
a1 = 0
a2 = W
a3 = 0
a4 = H
N.times do
  x, y, a = gets.chomp.split.map(&:to_i)
  if a == 1
    a1 = x if x > a1
  elsif a == 2
    a2 = x if x < a2
  elsif a == 3
    a3 = y if y > a3
  elsif a == 4
    a4 = y if y < a4
  end
end

puts [a2 - a1, 0].max * [a4 - a3, 0].max