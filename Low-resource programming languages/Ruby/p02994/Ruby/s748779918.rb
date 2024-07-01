n, l = gets.split.map(&:to_i)

apples = (1..n).map{|i| l + i - 1}
expect = apples.sum
candidate = apples.map{|i| i.abs}.sort.first
if expect < 0
  p expect + candidate
else
  p expect - candidate
end