n = gets.to_i
p arr = (7.times.map { |n| 6 ** n } + 6.times.map { |n| 9 ** n }).uniq.sort.reverse
count = 0
while(n >= arr.min)
    arr.each do |num|
        if n >= num
            n -= num
            count += 1
            break
        end
    end
end
puts count + n
