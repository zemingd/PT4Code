inputs = gets.split.map(&:to_i)
puts inputs.max == inputs.inject(:+) - inputs.max ? 'Yes' : 'No'