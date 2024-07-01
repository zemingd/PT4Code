list = STDIN.gets.strip.split(/\s/).map(&:to_i).sort
sum = 0
list.each_with_index do |e, i|
  next if i == 0
  sum += (list[i] - list[i-1]).abs
end
puts sum