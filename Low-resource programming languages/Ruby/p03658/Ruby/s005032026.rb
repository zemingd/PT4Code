_n, k = gets.split.map(&:to_i)
lines = gets.split.map(&:to_i).sort.reverse

p lines.slice(0, k).inject(:+)