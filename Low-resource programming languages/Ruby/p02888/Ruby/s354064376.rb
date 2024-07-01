n = gets.to_i
l = gets.split.map(&:to_i).sort

ans = 0
(n-2).times do |i|
    (i+1).upto(n-2) do |j|
        k = n - 1
        k -= 1 while k >= 0 && l[k] >= l[i] + l[j]
        ans += k - j
        #p [ans,i,j,k]
    end
end

puts ans