P, Q, R = gets.chomp.split.map(&:to_i)
array = P+Q, Q+R, P+R
puts array.min
