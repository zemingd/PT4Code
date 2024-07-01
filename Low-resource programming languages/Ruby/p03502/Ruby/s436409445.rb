x = gets.to_i
fx = x.to_s.split(//).map(&:to_i).inject(:+)
puts x % fx == 0 ? 'Yes' : 'No'