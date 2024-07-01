N,M=gets.split.map(&:to_i)
LR=M.times.map{gets.split.map(&:to_i)}

l,r=0, 10**5+1
LR.each do |ll,rr|
    l = ll if l < ll
    r = rr if r > rr
end

ans = r - l + 1
if ans < 0
    puts 0
else
    puts ans
end
