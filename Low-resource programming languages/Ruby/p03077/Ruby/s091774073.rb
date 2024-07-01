N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i
train = [A, B, C, D, E]
ary = Array.new(6, 0)
ary[0] = N
minute = 0
while ary[5] < N do
    minute += 1
    4.downto(0) do |i|
        next if ary[i] == 0
        tmp = train[i] > ary[i] ? ary[i] : train[i]
        ary[i + 1] += tmp
        if ary[i] > tmp
            ary[i] -= tmp
        else
            ary[i] = 0
        end
    end
end

puts minute