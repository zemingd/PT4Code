w, h, n = gets.split.map(&:to_i)
lim = [0, w, 0, h]
n.times do
  x, y, a = gets.split.map(&:to_i)
  if a == 1
    lim[0] = x if lim[0] < x
  elsif a == 2
    lim[1] = x if lim[1] > x
  elsif a == 3
    lim[2] = y if lim[2] < y
  elsif a == 4
    lim[3] = y if lim[3] > y
  end
end

if lim[0] >= lim[1] || lim[2] >= lim[3]
  puts 0
else
  puts (lim[1] - lim[0]) * (lim[3] - lim[2])
end
