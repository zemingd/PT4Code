cnt = 0
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
j = 1

for i in 0..n-1
    if a[i] != j
        cnt += 1
    else
        j+=1
    end
end

if !(a.include?(1))
    cnt = -1
end

puts cnt