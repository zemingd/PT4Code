S = gets.chomp
S.reverse!
size = S.size
a = Array.new(13){Array.new(2,0)}
a[0][0] = 1
b = Array.new(6)
b = [1,10,9,12,3,4]
c = 0
h,i,j,k = 0,0,0,0
while h < size
    i = h%6
    if S[h] == "?"
        j = 0
        while j < 13
            a[j][(i+1)%2] = 0
            k = 0
            while k <= 9
                a[j][(i+1)%2] += a[(j-k*b[i%6])%13][i%2]
                k += 1
            end
            a[j][(i+1)%2] %= 10**9+7
            j += 1
        end
    else
        c = S[i].to_i
        j = 0
        while j < 13
            a[(j+c*b[i%6])%13][(i+1)%2] = a[j][i%2]
            j += 1
        end
    end
    h += 1
end
puts a[5][size%2]