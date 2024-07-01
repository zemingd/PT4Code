h,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = 0
for i in 0.. n -1 do
    sum += a[i]
end
puts sum >= h ? 'Yes' : 'No'
