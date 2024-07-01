n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
ones = a.count(1)
ans = Array.new(n, true)

(n-1).times do |i|
    next if ans[i] == false
    ((i+1)...n).each do |j|
        ans[i] = false if a[j] == a[i]
        ans[j] = false if a[j] % a[i] == 0
    end
end

puts ans.count(true)