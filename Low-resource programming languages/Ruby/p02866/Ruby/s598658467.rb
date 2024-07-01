N=gets.to_i
as=gets.split.map(&:to_i)
bs=Array.new(N,0)
if as[0]!=0 || as[1..-1].any?{|e|e==0}
    puts 0
    exit
end
as.each do |e|
    bs[e]+=1
end
ls=as.max
cnt=1
(ls).times do |i|
    cnt=cnt*(bs[i]**bs[i+1])
    cnt%=998244353
end
puts cnt%998244353