D, T, S = gets.split.map(&:to_i)
puts D - T*S <= 0 ? 'Yes' : 'No'