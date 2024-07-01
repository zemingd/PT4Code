n, m = gets.chomp.split(" ").map(&:to_i)
lines = []
m.times do
    inputs = gets.chomp.split(" ").map(&:to_i).map{|v| v-1}
    k = inputs.shift
    lines << inputs
end
term = gets.chomp.split(" ").map(&:to_i)
ans = 0
[0, 1].repeated_permutation(n).each do |bits|
    flag = true
    m.times do |i|
        count = 0
        lines[i].each do |s|
            count += 1 if bits[s-1] == 1
        end
        flag = false if count % 2 != term[i]
    end
    ans += 1 if flag
end
puts ans