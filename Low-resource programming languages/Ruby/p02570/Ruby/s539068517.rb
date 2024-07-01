d, t, s = gets.chomp.split(' ').map{|i| i.to_i }
puts (1.0 * d / s) <= t ? 'Yes' : 'No'
