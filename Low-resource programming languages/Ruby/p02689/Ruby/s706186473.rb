num = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
routes = []
num[1].times do
  routes << gets.split.map(&:to_i)
end

losers = []
routes.each do |r|
  if heights[r[0] - 1] > heights[r[1] - 1]
    losers << r[1]
  elsif heights[r[0] - 1] < heights[r[1] - 1]
    losers << r[0]
  else
    losers << r[0]
    losers << r[1]
  end
end
puts num[0] - losers.uniq.length