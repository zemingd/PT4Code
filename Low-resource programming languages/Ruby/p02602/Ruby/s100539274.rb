n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = 1
ok = true
for r in 0...n
    l = r - k
    next if l < 0

    if a[l] < a[r]
        puts "Yes"
    else
        puts "No"
    end
end

