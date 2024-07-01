L, N = gets.chomp.split.map(&:to_i)

words = []
N.times { words << gets.strip }

puts words.sort