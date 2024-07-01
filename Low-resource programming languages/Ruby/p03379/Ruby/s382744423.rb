N = gets.to_i
X = gets.strip.split.map(&:to_i)
a = X.sort!

for i in 0..N-1

    if a.index(X[i]) < N / 2

        puts a[(N/2)-1]

    else

        puts a[(N/2)]

    end

end
