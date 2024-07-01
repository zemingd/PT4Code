n,m,k = gets.chomp.split(" ").map!{|item| item.to_i}
a = gets.chomp.split(" ").map!{|item| item.to_i}
b = gets.chomp.split(" ").map!{|item| item.to_i}
ans = 0
total = 0
i = 0
j = 0
while total < k
            if a[i] < b[j]
                total = total + a[i]
                i = i +1
                a.push (k+1)
            else
                total = total + b[j]
                j = j +1
                b.push (k+1)
            end
    if total <= k
        ans = ans + 1
    end
end
puts ans