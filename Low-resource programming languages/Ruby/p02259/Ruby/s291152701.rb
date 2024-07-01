N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

cnt = 0
flag = true
while flag do
    flag = false
    (N- 1).downto(1) do |j|
        if a[j] < a[j - 1] then
            tmp = a[j]
            a[j] = a[j - 1]
            a[j - 1] = tmp
            
            cnt += 1
            flag = true
        end
    end
end

puts a.join(' ')
puts cnt
