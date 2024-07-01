n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
size = a.size
a = a.sort 
i = 1
while true
    if a[i] == a[i-1]
        puts "NO"
        break
    else
        i += 1
    end
    if size  == i - 1
        puts "YES"
        break
    end
end