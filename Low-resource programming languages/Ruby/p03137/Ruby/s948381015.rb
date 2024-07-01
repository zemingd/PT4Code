N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)
diff = []
X.sort!
i = 0
return puts 0 if N >= M
while i < M - 1
    diff << X[i+1] - X[i]
    i+=1
end
diff.sort!
puts diff[0, N-M].inject(:+)