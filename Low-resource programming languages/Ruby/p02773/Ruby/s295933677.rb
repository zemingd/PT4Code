N=gets.to_i
cnt=Hash.new{0}
N.times{
  S=gets.chomp
  cnt[S]+=1
}
MX=count.max_by{|k,v|v}[1]
puts count.select{|k,v|v==MX}.keys.sort