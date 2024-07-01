n=gets.to_i
a=gets.split.map(&:to_i)

def modu(m,a)
    f=0
    a.each do|ele|
        f+=m%ele
    end
    return f
end
class Array
def lcm
    self.inject{|a,b| a.lcm(b)}
end
end
ret=0
unchi=a.lcm
for i in unchi-10..unchi
    s=modu(i,a)
    if ret<s
        ret=s
    end
end
p ret