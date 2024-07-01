N,M = gets.split.map(&:to_i)
P = []
Y = []
a = []
b = []
for i in 0..M-1
    P[i],Y[i] = gets.split.map(&:to_i)
    a[i] = [P[i],Y[i],i]
end

a.sort_by!{|x| x[0]}
j = 0
b[0] = []
b[0][0] = [a[0][0],a[0][1],a[0][2]]
for i in 1..M-1

    if a[i][0] != a[i-1][0]

        b[j].sort!
        j += 1
        b[j] = []
        
        
    end

    b[j].push(a[i])

end

for i in 0..j

    b[i].sort_by!{|x| x[1]}

end

c = []
n = 0

for i in 0..j

    for k in 0..b[i].size-1

        b[i][k].push(k+1)
        c.push(b[i][k])

        

    end

    

end

c.sort_by!{|x|  x[2]}

for i in 0..M-1

    puts "#{c[i][0] / (10**5)}#{c[i][0] / (10**4)}#{c[i][0] / (10**3)}#{c[i][0] / (10**2)}#{c[i][0] / (10**1)}#{c[i][0] / (10**0)}#{c[i][3] / (10**5)}#{c[i][3] / (10**4)}#{c[i][3] / (10**3)}#{c[i][3] / (10**2)}#{c[i][3] / (10**1)}#{c[i][3] / (10**0)}"

end 


