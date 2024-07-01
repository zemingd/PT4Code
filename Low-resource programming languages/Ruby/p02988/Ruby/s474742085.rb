n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

cnt = 0
for i in 1...(n-1)
    if a[i-1] < a[i] and a[i] < a[i+1]
        cnt += 1
    elsif a[i-1] > a[i] and a[i] > a[i+1]
        cnt += 1
    end
end
puts cnt