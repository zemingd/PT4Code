n,k = gets.chomp.split().map(&:to_i)
a = gets.chomp.split().map(&:to_i)
aa = []
i = 0
for i in 0..(n-k)
    b = a[i..(i+k-1)]
    bb = b.inject(:*)
    aa.push(bb)
end
j = 0
for j in 0..(aa.size-2)
    if aa[j] < aa[j+1]
        print "Yes\n"
    else
        print "No\n"
    end
end
