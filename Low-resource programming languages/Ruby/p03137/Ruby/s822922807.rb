N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)
diff = []
X.sort!
i = 0
if N >= M
    puts 0
    return
end
while i < M - 1
    diff << X[i+1] - X[i]
    i+=1
end
diff.sort!
puts diff[0, N-M].inject(:+)