n, k = gets.split.map{|n|n.to_i}
n = gets.split.map{|n|n.to_i}.sort!.reverse
c = 0
sum = 0
n.each do |num|
    sum += num
    c += 1
    if c == k
        break
    end
end
puts sum