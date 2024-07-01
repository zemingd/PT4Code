N = gets.to_i
P = gets.split.map(&:to_i)
flag = Array.new
for i in 1..N
    if P[i-1] != i
        flag << P[i-1]
    end
end
puts [0, 2].include?(flag.length) ? "YES" : "NO"