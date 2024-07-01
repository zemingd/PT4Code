N = gets.to_i
X = gets.to_s

for i in 0..N-1
    x = X.dup
    x[i] = x[i] == ?1 ? ?0 : ?1
    x = x.to_i(2)
    count = 0
    while x != 0
        x = x % x.to_s(2).count(?1)
        count += 1
    end
    p count
end