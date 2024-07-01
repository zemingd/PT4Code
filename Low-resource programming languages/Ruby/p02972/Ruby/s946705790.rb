n = gets.to_i
a = [0] + gets.split.map(&:to_i)

check = [0] + Array.new(n,0)
(1..n).reverse_each do |i|

    if 2 * i > n then
        check[i] = a[i]
    else
        count = check[2*i]

        n.times do |j|
            break if ((key = (2 * j + 1) * i) > n)
            count += check[key]
        end
        
        check[i] = 1 if count % 2 != a[i]
    end
end

ans = []
check.each_with_index do |x,index|
    ans << index if x == 1
end

puts (s = ans.size)
puts ans.join(" ") if s != 0