# Eating Symbols Easy
S = gets.chomp.to_s
n = 0
for i in 0..S.length-1 do
    if S[i] == "+"
        n = n + 1
    elsif S[i] == "-"
        n = n - 1
    end
end
puts n