n = gets.to_i
vs = gets.split.map(&:to_i)

vs1 = []
vs2 = []
vs.length.times{|x|
    vs1.push(vs[x]) if x % 2 == 0
    vs2.push(vs[x]) if x % 2 != 0
}

vs1_h = Hash.new(0)
vs2_h = Hash.new(0)

vs.length.times{|x|
    vs1_h[vs[x]] = vs1_h[vs[x]] + 1 if x % 2 == 0
    vs2_h[vs[x]] = vs2_h[vs[x]] + 1 if x % 2 != 0
}

n1,n2 = vs1_h.sort_by{|_,v| v}
m1,m2 = vs2_h.sort_by{|_,v| v}

n1f,n1b = n1
m1f,m1b = m1

n2f,n2b = n2
m2f,m2b = m2

v1_count = 0
v2_count = 0

if (n2 == nil) && (m2 == nil)
    if n1f == m1f
        ans = vs.length / 2
    else
        ans = 0
    end
elsif (n2 != nil) && (m2 == nil)
    if n1f == m1f
        ans = vs.length / 2 - n2b
    else
        ans = vs.length / 2 - n1b
    end
elsif (n2 == nil) && (m2 != nil)
    if n1f == m1f
        ans = vs.length / 2 - m2b
    else
        ans = vs.length / 2 - m1b
    end
else
    if n1f == m1f
        ans = vs.length - [n1b+m2b,n2b+m1b].max
    else
        ans = vs.length - m1b - n1b
    end
end

puts ans
