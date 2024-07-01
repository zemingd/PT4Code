N, M = gets.split()
A = gets.split()

count = 0

A.each do |a|
    count += a.to_i / N.to_i > 1 / (4 * M.to_i) ? 1 : 0
end

puts count > M.to_i ? "YES" : "NO"