n = gets.to_i
v = gets.strip.split.map(&:to_i)

a = []
b = []

for i in 0..(n/2)-1

    a.push(v[2*i])
    b.push(v[(2*i)+1])

end

a.sort!
b.sort!

acount = []
ax = []
ai = 0
bcount = []
bx = []
bi = 0

for i in 0..(n/2)-2

    if a[i] != a[i+1]

        acount.push(i-ai+1)
        ax.push(a[i])
        ai = i+1 

    end

end

acount.push((n/2)-ai)
ax.push(a[(n/2)-1])

for i in 0..(n/2)-2

    if b[i] != b[i+1]

        bcount.push(i-bi+1)
        bx.push(b[i])
        bi = i+1 
    end

end

bcount.push((n/2)-bi)
bx.push(b[(n/2)-1])

if acount.count(acount.max) == 1 && bcount.count(bcount.max) == 1 && ax[acount.index(acount.max)] == bx[bcount.index(bcount.max)]

    if acount.size == 1 && bcount.size == 1

        puts n/2 

    else

        if acount.sort[-2] < bcount.sort[-2]

            puts (n-acount.max-bcount.sort[-2])

        else

            puts (n-bcount.max-acount.sort[-2])

        end

    end

else

    puts (n-acount.max-bcount.max)

end
