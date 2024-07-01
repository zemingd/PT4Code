io = STDIN
n,k=io.gets.split.map(&:to_i)
a=io.gets.split.map(&:to_i)
ar= a.sort.chunk_while{|x,y|x==y}.sort_by{|x|x.size}.to_a
if  ar.size-k < 0
  puts 0
else
  puts ar.take(ar.size-k).flatten.size
end
