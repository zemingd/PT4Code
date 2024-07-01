n = gets.to_i
p = gets.split(" ").map(&:to_i)

loop_count = n - 2
count = 0

(1..loop_count).each do |i|
    if p[i] >= p[i-1] and p[i+1] > p[i]
        count = count + 1
    elsif p[i] >= p[i+1] and p[i-1] > p[i]
        count = count + 1
    end
end

puts count
