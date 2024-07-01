n,k = gets.chomp.split().map(&:to_i)
a = gets.chomp.split().map(&:to_i)

i = 0
for i in 0..(n-k-1)
    if a[i] < a[i+k]
        print "Yes\n"
    else
        print "No\n"
    end
end
