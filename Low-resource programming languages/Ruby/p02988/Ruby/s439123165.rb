n = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
for i in 1...n-1
    if a[i-1] < a[i] && a[i] < a[i+1]
        cnt+=1
    end
end

puts cnt
