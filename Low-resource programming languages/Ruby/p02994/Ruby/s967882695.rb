N, L=gets.split.map &:to_i
a=(0...N).map{|i|L+i}
s=a.inject :+
a.map!{|e|s-e}
res=Float::INFINITY
a.each{|e| res=e if (res-s).abs>(s-e).abs}
puts res
