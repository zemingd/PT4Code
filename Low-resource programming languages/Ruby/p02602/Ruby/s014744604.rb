n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = 1
ok = true
for r in 0...n
    l = r - k
    pre = sum
    sum *= a[r]
    next if l < 0

    sum /= a[l]
    if pre < sum
        puts "Yes"
    else
        puts "No"
    end
end

