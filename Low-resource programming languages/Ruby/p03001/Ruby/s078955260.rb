w, h, x, y = gets.chomp.split.map(&:to_i)
arr = [w * h / 2.0, 0]
arr[1] += 1 if x == w / 2.0 && y == h / 2.0
puts arr.join(" ")