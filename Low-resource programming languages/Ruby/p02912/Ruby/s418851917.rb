io = STDIN
gi =-> {io.gets.split.map(&:to_i)}
n,m = gi[]
ar = gi[].sort
chunk=[0]
m.times do
  if ar.size == 0 || chunk[-1]>=ar[-1]
    a=chunk.pop/2
  else
    a=ar.pop/2
  end
  ix=chunk.bsearch_index{|x|x>=a}
  chunk.insert(ix||1,a)
end
p (chunk+ar).inject(:+)
