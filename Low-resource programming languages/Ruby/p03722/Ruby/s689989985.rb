n, m = gets.split.map(&:to_i)
array = Array.new(n){ Array.new(n){ nil } }
points = Array.new(n){ Array.new(n){ nil } }
m.times do
  a, b, c = gets.split.map(&:to_i)
  array[a-1][b-1] = c
end

def dfs(row, array, points, point)
  array[row].each_with_index do |mass, col|
    next if mass.nil?
    if points[row][col].nil?
      points[row][col] = point + mass
      return dfs(col, array, points, point + mass)
    elsif points[row][col] < point + mass
      return "inf"
    end
  end
  max = nil
  points.size.times do |i|
    p = points[i][points.size-1]
    next if p.nil?
    if max.nil?
      max = p
    else
      max = [max, p].max
    end
  end
  return max
end

point = dfs(0, array, points, 0)

puts point
