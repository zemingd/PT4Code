n = []
n = gets.split.map(&:to_i)
a = []
a = gets.split.map(&:to_i)
b = []
b = gets.split.map(&:to_i)
c = []
c = gets.split.map(&:to_i)
#a.sort
#b.sort
#c.sort

k=[]
for i in 0..n[0]-1
    for j in 0..n[1]-1
        k.push(a[i]+b[j])
    end
end
k.sort!
l=[]
for i in 0..k.length-1
    for j in 0..n[2]-1
        l.push(k[i]+c[j])
    end
end
#p l
l.sort!
#p l
for i in 0..n[-1]-1
    puts l[l.length-1-i]
end
