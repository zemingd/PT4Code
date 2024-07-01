n, d = gets.chomp.split(" ").map(&:to_i)
arr = []
count = 0
n.times do
    row = gets.chomp.split(" ").map(&:to_i)

    arr.each do |r|
        expr = (0...r.length).map { |j| (r[j] - row[j]) ** 2 }.sum
        rt = Math.sqrt(expr)
        count += 1 if rt.to_i == rt
    end

    arr << row
end
puts count