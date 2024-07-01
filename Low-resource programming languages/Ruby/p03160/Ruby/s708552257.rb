n = gets.strip.to_i
steps = gets.strip.split(' ').map(&:to_i)

costs = [0, (steps[0]-steps[1]).abs]

(2...n).each do |i|
  costs[i] = [costs[i-1] + (steps[i] - steps[i-1]).abs, 
    costs[i-2] + (steps[i] - steps[i-2]).abs].min
end

puts costs[n-1]