N,x,*as=$<.read.split.map(&:to_i)
ret = 0
as.sort.each do |a|
    x -= a
    if 0 <= x
        ret += 1
    else
        break
    end
end

ret -= 1 if x > 0
puts ret
