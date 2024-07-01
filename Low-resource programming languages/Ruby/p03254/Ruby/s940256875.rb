N,x,*as=$<.read.split.map(&:to_i)
as.sort!
ret = 0

as.each do |a|
    if a <= x
        ret += 1
    else
        break
    end
end

puts ret