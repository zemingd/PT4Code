w, h, x, y = gets.split.map(&:to_i)
ans = []
ans << w * h / 2.0
ans << (w / 2.0 == x && h / 2.0 == y ? 1 : 0)
puts ans.join(" ")
