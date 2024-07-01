N, M = gets.split.map(&:to_i)
Hs = [nil] + gets.split.map(&:to_i)
ABs = readlines.map{|l| l.split.map(&:to_i)}

@g = ABs.each_with_object(Array.new(N + 1){[]}){|(a, b), o| o[a] << b; o[b] << a}
puts [*1 .. N].count{|u| @g[u].map{Hs[_1]}.all?{|h| h < Hs[u]}}