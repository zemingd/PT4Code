b = []
b = gets.split.map(&:to_i)
c = []
while s = gets
  c.push(s.split.map(&:to_i))
end
d = []
d = c.sort {|a,b| a[1] <=> b[1]}
#p c
#p d
s = 0
t = d[0][1]-1
u = 0
v = 0
cnt = 0
while s <= d.length-1 do
    for i in s..d.length-1 do
        if t < d[i][1]-1
            cnt += 1
            t = d[i][1]-1
            s = i
            break
        end
    end
    #p "#{s} #{t} #{cnt}"
    while d[s][0]-1 <= t do
        s += 1
        if s == d.length 
            break
        end
    end
    cnt += 1
    if s != d.length
        t = d[s][1]
    end
    #p "#{s} #{t} #{cnt}"
    #s -= 1
    #if s != d.length
        #t = d[s-1][0]
        #cnt += 1
    #end
    #p s
end
if t < d[s-1][1]-1
    cnt += 1
end
puts cnt
        
    