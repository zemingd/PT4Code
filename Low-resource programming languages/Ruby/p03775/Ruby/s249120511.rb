N = gets.to_i

def digit(n)
    n.to_s.length
end

a = []
a[0] = digit(N)

for i in 1..N ** (0.5)

    if N % i == 0

        a[i] = digit(N/i)

    elsif N % i != 0

        a[i] = digit(N)

    end

end

puts a.min