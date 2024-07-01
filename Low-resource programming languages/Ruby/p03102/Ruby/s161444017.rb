n, m, c = gets.chomp.split(" ").map(&:to_i)
bs = gets.chomp.split(" ").map(&:to_i)

passed = 0
n.times do
    as = gets.chomp.split(" ").map(&:to_i)
    total = 0
    as.each_with_index do |a, i|
        total += a * bs[i]
    end
    val = total + c
    if val > 0
        passed += 1
    end
end

print passed