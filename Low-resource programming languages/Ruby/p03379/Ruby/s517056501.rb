N = gets.to_i
X = gets.strip.split.map(&:to_i)
a =  []

for i in 0..N-1

    a[i] = Marshal.load(Marshal.dump(X))
    a[i].delete_at(i)
    a[i].sort!
    puts a[i][(N-1)/2]

end