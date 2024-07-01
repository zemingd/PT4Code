n = gets.to_i
a = gets.split.map(&:to_i)

t = Array.new(n+1,0)
(1..n).reverse_each do |i|
    flg = 0;
    j = 2;
    while i*j<=n
        flg = flg ^ t[i*j]
        j+=1
    end
    t[i] = flg ^ a[i-1]
end

b = [];
(1..n).each do |i|
    b.push(i) if t[i]>0
end

puts b.size
puts b.join(" ")
