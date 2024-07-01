N, K = gets.split.map(&:to_i)
S = gets.chomp

for i in 1..N.size do
    if i != K then
        print S[i - 1]
    else
        print S[i - 1].downcase
    end
end
puts ""
