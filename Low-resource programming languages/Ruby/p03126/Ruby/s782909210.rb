st = gets.chomp!.split(" ")
n = st[0].to_i
m = st[1].to_i
a = Array.new(m+1,0)
count = 0

for i in 1..n
    st = gets.chomp!.split(" ")
    
    for j in 1..st[0].to_i
        a[st[j].to_i] += 1
    end
end

for i in 1..m
    if a[i] == n
        count += 1
    end
end

puts count