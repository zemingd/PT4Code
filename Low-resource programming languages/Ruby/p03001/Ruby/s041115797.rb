def rectangle_cutting(w, h, x, y)
  area = w * h / 2.0
  div = w == x * 2 && h == y * 2 ? 1 : 0
  [area, div]
end

w, h, x, y = gets.split.map(&:to_i)
ans = rectangle_cutting(w, h, x, y)
puts "#{ans[0]} #{ans[1]}"
