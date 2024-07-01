N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

def beat_monsters(i, j)
    if A[i] > B[j] 
        tmp = B[j]
        A[i] -= B[j]
        B[j] = 0
        tmp
    else
        tmp = A[i]
        A[i] = 0
        B[j] -= tmp
        tmp
    end
end

ans = 0

for i in 0..N-1 do
    ans += beat_monsters(i, i)
    ans += beat_monsters(i + 1, i) if B[i] > 0
end

puts(ans)