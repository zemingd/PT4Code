n, m, c = gets.chomp.split(" ").map(&:to_i)
bs = gets.chomp.split(" ").map(&:to_i)
asArray = []
n.times do |i|
    asArray[i] = gets.chomp.split(" ").map(&:to_i)
end

passed = 0
for as in asArray do
    total = 0
    as.each_with_index do |a, i|
        total += a * bs[i]
    end
    #as.map.with_index {|a, i|total += a * bs[i]}
    val = total + c
    if val > 0
        passed += 1
    end
end

print passed