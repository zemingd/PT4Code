require 'matrix'

N, D = gets.split.map(&:to_i)
Xs = STDIN.each_line.to_a.map { |l| Vector[*l.split.map(&:to_i)] }.to_a

out = Xs.combination(2).select { |(x_i, x_j)|
  d = Math.sqrt((x_j - x_i).map { |d| d ** 2 }.reduce(&:+))
  d.to_i == d
}.count

puts out
