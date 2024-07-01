h,n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sum = 0
for i in 0..n-1
    sum += a[i]
end
if sum>=h
    puts 'Yes'
else
    puts 'No'
end
