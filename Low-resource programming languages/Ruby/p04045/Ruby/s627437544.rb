n,k = gets.chomp!.split
d = [0,1,2,3,4,5,6,7,8,9] - gets.split.map(&:to_i)
a = n.split("").map(&:to_i)
l = a.size

l.times do |i|
    next if d.include?(a[i])

    if (s = d.find{|x| x > a[i]}) then
        a[i] = s
        (i+1..l-1).each do |j|
            a[j] = d[0]
        end
    else
        if i == 0 then
            a.unshift(0)
            i = 1
            l += 1
        end
        a[i-1] = d.find{|x| x > a[i-1]}
        (i..l-1).each do |j|
            a[j] = d[0]
        end
    end

    break
end

puts a.inject{|x,y| 10*x + y}