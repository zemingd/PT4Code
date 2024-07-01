h, n = gets.split.map(&:to_i)
puts h <= gets.split.map(&:to_i).inject(:+) ? 'Yes' : 'No'