N,K = gets.split.map(&:to_i)
a = []
b = []
c = []
for i in 0..N-1
    a[i],b[i] = gets.split.map(&:to_i)
    c[i] = []
    c[i][0] = a[i]
    c[i][1] = b[i]
end

c.sort!{|a,b| a[0] <=> b[0]}
d = []
e = []

for i in 0..N-1

    d[i] = c[i][0]
    e[i] = c[i][1]

end

puts d[(0..N).bsearch{|n| e.slice(0..n).inject(:+) >= K}]