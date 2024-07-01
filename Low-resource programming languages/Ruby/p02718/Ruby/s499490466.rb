n, m = *gets.split.map(&:to_i)

items = gets.split.map(&:to_i).sort_by {|i| -i }
all = items.sum
limit = all.to_f / (4 * m)

vo = items[m - 1]

puts(vo >= limit ? "Yes" : "No")