n,k = gets.split.map{|tmp|tmp.to_i}
order = Array.new
counter = Array.new(10**5,0)
n.times do |i|
    a,b = gets.split.map{|tmp|tmp.to_i}
    order.push(a-1)
    counter[a-1] += b
end
order.uniq.sort!
sum = 0
order.each do |i|
    sum += counter[order[i]]
    if sum >= k
        puts order[i]+1
        break
    end
end