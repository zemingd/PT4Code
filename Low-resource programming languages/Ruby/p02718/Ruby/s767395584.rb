n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
cnt = 0
sum = a.inject(:+)
base = sum/4.0*m
n.times do |i|
    if a[i] >= base
        cnt += 1
    end
end
if cnt >= m
    puts "Yes"
else 
    puts "No"
end
