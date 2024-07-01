io = STDIN
n=io.gets.to_i
A=io.gets.split.map(&:to_i)
CHUNK=A.sort.chunk_while{|i,j|i==j}.to_a
C_Hash=CHUNK.map{|a|[a.first,a.size]}.to_h
def cnt(k)
  return 0 if k<=1
  k*(k-1)/2
end
@memo={}
def calc(k)
  return @memo[k] if @memo.has_key?(k)
  C_Hash[k]=C_Hash[k]-1
  @memo[k]=C_Hash.values.map{|kk|cnt(kk)}.inject(&:+)
  C_Hash[k]=C_Hash[k]+1
  @memo[k]
end
A.each do |k|
  puts calc(k)
end
