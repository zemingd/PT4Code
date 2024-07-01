n,k = gets.chomp!.split
d = ["0","1","2","3","4","5","6","7","8","9"] - gets.chomp!.split
a = n.split("")
l = a.size

l.times do |i|
    next if d.include?(a[i]) 
    if (x = d.find{|b| b > a[i]}) then
        a[i] = x
    else
        a[i] = d[0]
        if i == 0 then
            a.unshift(1)
        else
            a[i-1] += 1
        end
        i = 0
        next
    end

    i+1.upto(l-1) do |j|
        a[j] = d[0]
    end
    break
end

puts a.inject{|x,y| 10 * x.to_i + y.to_i}