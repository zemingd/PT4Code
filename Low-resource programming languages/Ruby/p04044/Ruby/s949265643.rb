n, l = gets.split.map(&:to_i)
strings = []
n.times { strings << gets.chomp }
puts strings.sort.join
