N,x,*as=$<.read.split.map(&:to_i)
ret = 0
as.sort.each do |a|
    if a <= x
        ret += 1
        x -= a
    else
        break
    end
end

ret = [ret-1,0].max if x > 0
puts ret
