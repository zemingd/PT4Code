io = STDIN
n=io.gets.to_i
A=io.gets.split.map(&:to_i)
$ar=Array.new(n+1,0)
A.sort.chunk_while{|i,j|i==j}.each do |nums|
  $ar[nums.first]=nums.size
end
def cnt(k)
  return 0 if k<=1
  k*(k-1)/2
end
@memo={}
def calc(k)
  return @memo[k] if @memo.has_key?(k)
  $ar[k]-=1
  sum=0
  $ar.each{|kk|sum+=cnt(kk)}
  @memo[k]=sum
  $ar[k]+=1
  @memo[k]
end
A.each do |k|
  puts calc(k)
end
