gets
h = gets.split.map(&:to_i)

ans = h.inject([0, 0]) do |(num, height), item|
  if item >= height
    height = item
    num += 1
  end
  [num, height]
end

puts ans.first
