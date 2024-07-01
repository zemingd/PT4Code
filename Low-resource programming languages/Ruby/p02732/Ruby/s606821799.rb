io = STDIN
n=io.gets.to_i
A=io.gets.split.map(&:to_i)
CHUNK=A.sort.chunk_while{|i,j|i==j}.to_a
C_Hash=CHUNK.map{|a|[a.first,a.size]}.to_h
def cnt(k)
  return 0 if k<=1
  k*(k-1)/2
end
def calc(k)
  hash=C_Hash.to_a.to_h
  hash[k]=hash[k]-1
  hash.values.map{|kk|cnt(kk)}.inject(&:+)
end
A.each do |k|
  puts calc(k)
end
