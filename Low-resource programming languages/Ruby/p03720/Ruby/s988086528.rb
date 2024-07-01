N, M = gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

h = ABs.each_with_object(Hash.new(0)){|(a, b), h| h[a] += 1; h[b] += 1}
(1 .. N).each{|i| puts h[i]}