n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
count = 0
for i in 0..n-1
    if a[i] == count + 1
        count = count + 1
    end
end

if count == 0
    puts -1
else
    puts n - count
end