n, l = gets.chomp.split.map(&:to_i)
words = []
n.times{words << gets.chomp}
puts words.sort.join
