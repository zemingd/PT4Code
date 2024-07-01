N,M = gets.split.map(&:to_i)
es=Hash[(1..N).map{|i| [i,{}] }]
(0...M).each{
  a,b = gets.split.map(&:to_i)
  es[a][b] = es[b][a] = 1
}
puts (1..N).map{|a|es[a].keys.size}