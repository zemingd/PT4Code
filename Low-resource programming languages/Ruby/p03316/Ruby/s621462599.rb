n = gets.chomp
puts n.to_i % n.split("").map(&:to_i).inject(:+) == 0 ? 'Yes' : 'No'