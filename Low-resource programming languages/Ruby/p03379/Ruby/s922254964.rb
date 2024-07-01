N = gets.to_i
X = gets.strip.split.map(&:to_i)
a = X.sort
b = a[N/2]
c = a[(N/2)-1]

for i in 0..N-1

    if X[i] <= a[(N/2)-1]

        puts b

    else

        puts c

    end

end

