S = gets.chomp.chars.map &:to_i

N = S.size

TARG = 753

min = TARG

for i in 0..(N - 3) do
    num = S[i]*100 + S[i + 1]*10 + S[i + 2]
    min = [min, (num - TARG).abs].min
end

p min
