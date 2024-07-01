N = gets.to_i
heights = gets.split.map(&:to_i)
answer = true
previous = heights.shift

heights.each do |current|
  if previous < current
    previous = current - 1
  elsif previous == current
  elsif previous == current - 1
  else
    answer = false
    break
  end
end
puts answer ? 'Yes' : 'No'
