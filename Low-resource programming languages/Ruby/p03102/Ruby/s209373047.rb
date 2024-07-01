n, m, c = gets.chomp.split(" ").map(&:to_i)
bs = gets.chomp.split(" ").map(&:to_i)
asArray = []
for i in 0..n-1 do
    asArray[i] = gets.chomp.split(" ").map(&:to_i)
end

passed = 0
for as in asArray do
    total = 0
    as.map.with_index {|a, i|total += a * bs[i]}
    val = total - c.abs
    if val > 0
        passed += 1
    end
end

print passed