io = STDIN
$hash=Hash.new{|h,k|h[k]=0}
n,$k=io.gets.chomp.split.map(&:to_i)
n.times do
a,b=io.gets.chomp.split.map(&:to_i)
$hash[a]+=b
end
def calc()
  sum=0
  $hash.keys.sort.each do |v|
    cnt=$hash[v]
    sum+=cnt
    return v if $k<=sum
  end
end
puts calc