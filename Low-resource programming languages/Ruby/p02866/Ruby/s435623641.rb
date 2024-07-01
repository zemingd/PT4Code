N=gets.to_i
as=gets.split.map(&:to_i)
bs=Array.new(N,0)
as.each do |e|
    bs[e]+=1
end
ls=as.max
cnt=1
(ls).times do |i|
    cnt=cnt*(bs[i]**bs[i+1])
end
puts cnt