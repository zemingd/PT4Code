N, K= gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i).sort
sum = 0
(l.length-K..l.length-1).each{|num| sum += l[num]}
puts sum