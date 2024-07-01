n=gets.to_i
h=gets.split.map(&:to_i).tally
(1..n).each{|i|puts h[i]||0}