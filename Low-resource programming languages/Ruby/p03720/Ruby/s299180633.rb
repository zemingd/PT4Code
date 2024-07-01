io = STDIN
hash=Hash.new{|h,k|h[k]=0}
n,m=io.gets.chomp.split.map(&:to_i)
m.times do
  a,b=io.gets.chomp.split.map(&:to_i)
  hash[a]+=1
  hash[b]+=1
end
(1..n).each {|n|puts hash[n]}