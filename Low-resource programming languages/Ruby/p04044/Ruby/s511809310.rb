N, L = gets.strip.split.map(&:to_i)
words = []
N.times { words << gets.strip }
puts words.sort.reduce(:+)