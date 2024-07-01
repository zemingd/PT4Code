length, point = gets.split.map(&:to_i)
string = gets.chomp
string[point - 1] = string[point - 1].downcase
puts string
