gets
a=$<.map &:split
s=[]
a.map{|l|
c,x=l
if c[?n]
s.unshift x
elsif c[?F]
s.shift
elsif c[?L]
s.pop
else
s.delete_at s.index x
end
}
puts s*" "