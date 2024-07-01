n, m = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)

sum = a.inject(&:+)

a = a.delete_if{|x| x < sum / (4.0*m) }
puts a.count >= m ? 'Yes' : 'No'