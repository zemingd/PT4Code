N = gets.to_i
S = gets.chomp
s = S.unpack("C*")
a = Array.new
for i in 0..N-2
    a[i] = 0
    for j in 97..122
        if s.slice(0,i+1).include?(j) && s.slice(i+1,N-i-1).include?(j)
            a[i] += 1
        end
    end
end
puts a.max
