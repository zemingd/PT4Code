n,m,k = gets.chomp.split(" ").map!{|item| item.to_i}
a = gets.chomp.split(" ").map!{|item| item.to_i}
b = gets.chomp.split(" ").map!{|item| item.to_i}
ans = 0
total = 0
while total < k
            if a[0] < b[0]
                total = total + a[0]
                a.delete_at(0)
                a.push k
            else
                total = total + b[0]
                b.delete_at(0)
                b.push k
            end
    if total <= k
        ans = ans + 1
    end
end
puts ans