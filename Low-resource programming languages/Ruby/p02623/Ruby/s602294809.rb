# frozen_string_literal: true

n, m, @k = gets.split.map(&:to_i)
@a = gets.split.map(&:to_i)
@b = gets.split.map(&:to_i)
@h = {}
def dfs(x, y, sum, count)
#  puts "#{x}, #{y}, #{sum}, #{count}"
  return @h[[x, y, sum, count]] if @h[[x, y, sum, count]]
  return @h[[x, y, sum, count]] = count - 1 if sum > @k
  return @h[[x, y, sum, count]] = count if x > @a.size - 1 && y > @b.size - 1

  aa = count
  bb = count
  aa = dfs(x + 1, y, sum + @a[x], count + 1) if x < @a.size
  bb = dfs(x, y + 1, sum + @b[y], count + 1) if y < @b.size
  @h[[x, y, sum, count]] = [aa, bb].max
end

puts dfs(0, 0, 0, 0)
