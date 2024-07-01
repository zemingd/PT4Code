N = gets.chomp.to_i
a = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end
a.sort!
i = 1
while i < N
    if a[i] == a[i-1]
        puts "NO"
        exit
    end
    i += 1
end
puts "YES"