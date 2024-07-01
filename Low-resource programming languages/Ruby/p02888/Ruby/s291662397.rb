n = gets.to_i
l = gets.split.map(&:to_i).sort
p l

ans = 0
(n-2).times do |i|
    k = i + 2
    (i+1).upto(n-2) do |j|
        k += 1 while k < n && l[k] < l[i] + l[j]
        ans += k - 1 - j
        #p [ans,i,j,k]
    end
end

puts ans
