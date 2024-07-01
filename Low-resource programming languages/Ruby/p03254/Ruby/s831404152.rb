n,x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
j = 0
for i in 0..n-1
    if x >= a[i]
        x -= a[i]
    else
        puts i
        exit()
    end
end

puts x == 0 ? n : n-1