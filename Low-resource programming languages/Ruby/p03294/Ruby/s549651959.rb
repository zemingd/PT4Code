N = gets.to_i
a = gets.split(' ').map(&:to_i)

ret = 0

for i in 0..N-1 do
    ret += a[i] - 1
end

puts ret
