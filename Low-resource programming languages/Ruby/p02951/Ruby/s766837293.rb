n = gets.chomp.to_i
count =1
arr = []
while count <= n
    if count.to_s.size.odd?
        arr.push(count.to_s.size)
    end
    count += 1
end
puts arr.count
