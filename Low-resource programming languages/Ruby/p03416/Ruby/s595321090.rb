A,B=$<.read.split.map(&:to_i)

ret = 0
A.upto(B) do |i|
    s = i.to_s
    ret += 1 if s == s.reverse
end

puts ret
