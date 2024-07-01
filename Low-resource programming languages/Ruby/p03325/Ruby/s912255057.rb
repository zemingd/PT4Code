N,*as=$<.read.split.map(&:to_i)

ret = 0

as.each do |a|
    while a & 1 == 0
        ret += 1
        a >>= 1
    end
end

puts ret
