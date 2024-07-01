n, m = gets.chomp!.split(" ").map(&:to_i)

answer = Array.new(0, m + 1)

n.times do |i|
    k, *a_k = gets.chomp!.split(" ").map(&:to_i)
    a_k.each do |j|
        answer[j] = (answer[j] || 0) + 1
    end
end

count = 0
answer.each do |ans|
    if ans == n
        count += 1
    end
end

puts count
