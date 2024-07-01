S = gets.chomp
S.reverse!
a = Array.new(13){Array.new(2,0)}
a[0][0] = 1
b = Array.new(6)
b = [1,10,9,12,3,4]
c = 0
for i in 0...S.size do
    if S[i] == "?"
        for j in 0...13 do
            a[j][(i+1)%2] = 0
            for k in 0..9 do
                a[j][(i+1)%2] += a[(j-k*b[i%6])%13][i%2]
            end
            a[j][(i+1)%2] %= 10**9+7
        end
    else
        c = S[i].to_i
        for j in 0...13 do
            a[(j+c*b[i%6])%13][(i+1)%2] = a[j][i%2]
        end
    end
end
puts a[5][S.size%2]