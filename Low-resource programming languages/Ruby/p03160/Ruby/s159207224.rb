N = gets.to_i
HEIGHTS = gets.split.map(&:to_i)
# $count = 0
$costs = Array.new(N) { nil }
$costs[0] = 0
$costs[1] = (HEIGHTS[1] - HEIGHTS[0]).abs

def get_cost(num)
  # $count += 1
  unless $costs[num]
    $costs[num] = [
      (HEIGHTS[num] - HEIGHTS[num-1]).abs + get_cost(num-1),
      (HEIGHTS[num] - HEIGHTS[num-2]).abs + get_cost(num-2),
    ].min
  end
  $costs[num]
end

puts get_cost(N-1)
# puts "count: #{$count}"
