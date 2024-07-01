n = gets.chomp.split("").map(&:to_i)
op = []
#0 -> `+`, 1 -> `-`
[0, 1].repeated_permutation(3) do |bits|
    sum = n[0]
    op = []
    3.times do |i|
        if bits[i] == 0
            sum += n[i+1]
            op << "+"
        else
            sum -= n[i+1]
            op << "-"
        end
    end
    break if sum == 7
end

puts n[0].to_s + op[0] + n[1].to_s + op[1] + n[2].to_s + op[2] + n[3].to_s + "=7"