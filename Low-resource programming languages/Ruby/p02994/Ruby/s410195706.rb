N, L = gets.strip.split.map(&:to_i)

sum=0
(0..N-1).each do |i|
	sum+=L+i
end

num=-1
ans=99999999
(0..N-1).each do |i|
    t=sum-(L+i)
    dif=(sum-t).abs
    if dif<ans
        ans=dif
        num=i
    end
end



puts sum-(L+num)
