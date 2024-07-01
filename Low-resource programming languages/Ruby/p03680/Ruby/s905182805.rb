N = gets.to_i
a = Array.new
b = Array.new
for i in 0..N-1
    a[i] = gets.to_i
end

b[0] = a[0]
i = 1
c = 0
d = 0
while c == 0 && d == 0
    if b == b.uniq && b[i-1] != 2
        b[i] = a[b[i-1]-1]
    elsif b != b.uniq
        puts -1
        c += 1
    elsif b[i-1] == 2
        puts b.size
        d += 1
    end
    i += 1
end