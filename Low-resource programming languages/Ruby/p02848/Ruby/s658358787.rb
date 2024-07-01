N = gets.chomp.to_i
S = gets.chomp
A = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
s = Array.new(S.size)

for i in 0...S.size do
    j = 0
    while S[i] != A[j]
        j += 1
    end
    s[i] = A[(j+N)%26]
end

for i in 0...S.size do
    print s[i]
end
puts