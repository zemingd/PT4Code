N = gets.to_i
A = gets.split(" ").map(&:to_i)
counts = Array.new(N,0)
sum = 0
A.each do |a|
    counts[a - 1] += 1
end
counts.each do |c|
    if c > 1
        sum += c* (c - 1) / 2
    end
end
A.each do |a|
    if counts[a - 1] > 1
        puts sum - counts[a - 1] + 1
    else
        puts 0
    end
end