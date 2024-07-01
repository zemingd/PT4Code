a = gets.split(' ').map(&:to_i)
puts a.inject(:+)/2.to_f.ceil