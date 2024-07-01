gets
h=gets.split.map(&:to_i)
p h.chunk_while{|x,y|x>=y}.map{|elm|elm.size-1}.max
