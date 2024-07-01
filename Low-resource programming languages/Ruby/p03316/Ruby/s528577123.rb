input = gets
puts input.to_i % input.split('').map(&:to_i).inject(:+) == 0 ? "Yes" : "No"
