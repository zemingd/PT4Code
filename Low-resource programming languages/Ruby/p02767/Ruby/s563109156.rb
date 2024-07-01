N = gets.chomp.map(&:to_i)
a , b = 0 

N.times.each i do
   a[i] = gets.chomp.map(&:to_i)
   b[i] = a[i] * a[i]
   a = a + a[i]
   b = b + b[i]
end

c = b

N.times.each i do
    c[i] = (b - 2 * a * i + i * i)
    if c[i] < c
        c = c[i]
    end
end

 puts ("#{c}")