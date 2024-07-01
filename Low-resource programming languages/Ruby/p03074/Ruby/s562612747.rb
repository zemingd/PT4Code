N, K = gets.split(" ").map(&:to_i)
S = gets.chomp.chars
l = "1"
ary = [0, 0]

S.each do |c|
    if c == l
        ary[-1] += 1
    else
        ary << ary[-1] + 1
    end
    l = c
end

ary += [ary[-1]] * (N * 2)
p ((ary.size - K) / 2).times.map{|i| ary[i * 2 + K * 2 + 1].to_i - ary[i * 2]}.max