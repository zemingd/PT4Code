# frozen_string_literal: true

n, w = gets.split.map(&:to_i)
items = Array.new(n) { gets.split.map(&:to_i) }

def solve(i, space, sum, items)
  return sum if i == items.count

  ignore = solve(i + 1, space, sum, items)
  return ignore if space < items[i][0]

  [solve(i + 1, space - items[i][0], sum + items[i][1], items), ignore].max
end

puts solve(0, w, 0, items)
