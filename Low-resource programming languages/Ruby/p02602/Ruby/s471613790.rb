nk = gets
nk = nk.split(' ')
n = nk[0].to_i
k = nk[1].to_i

aa = gets
aa = aa.split(' ')
a = aa.map{|i| i.to_i}

def point(i, k, a)
    return 0 if i < k

    total = 1
    k.times do |j|
        total *= a[i-j]
    end

    return total
end

p0=1
(n-k).times do |c|
    # p0 = point(k+c-1,k,a)

    # p1=p0
    # if a[c] > 0
    #     p1 = p1 * a[k+c] / a[c]
    # else
    #     p1 = point(k+c,k,a)
    # end
    if c == 0
        puts('Yes')
        next
    end

    b = a.drop(c).take(k+1)
    if b[-1] == 0
        puts('No')
        next
    end

    if b.drop(1).include?(0)
        puts('No')
        next
    end
    # puts(c)
    # puts(c+k+1)
    # print(b)
    # puts
    if b[-1] > b[0]
        puts('Yes') 
    else
        puts('No')
    end
end