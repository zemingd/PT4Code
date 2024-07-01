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

(n-k).times do |c|

#    puts(a[k+c],a[c])
    if a[k+c] > a[c]
        puts('Yes') 
    else
        puts('No')
    end
end