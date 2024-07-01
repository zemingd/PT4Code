line = gets.split(' ').map(&:to_i)
N = line[0]
M = line[1]
C = line[2]

B = gets.split(' ').map(&:to_i)
ret = 0
for i in 1..N do
    a = gets.split(' ').map(&:to_i)
    tmp = 0
    for j in 0..M-1 do
        tmp += B[j]*a[j]
    end
    if tmp + C > 0 then
        ret += 1
    end
end

puts ret