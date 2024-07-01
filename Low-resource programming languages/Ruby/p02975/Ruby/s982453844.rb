N = gets.chomp.to_i
a = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end

if N % 3 == 0
    a.sort!
    for i in 1...N/3 do
        if a[i] != a[i-1] || a[i+N/3] != a[i+N/3] || a[i+2*N/3] != a[i+2*N/3]
            puts "No"
            exit
        end
    end
    if a[0] ^ a[N/3] == a[2*N/3]
        puts "Yes"
    else
        puts "No"
    end
else
    for i in 0...N do
        if a[i] != 0
            puts "No"
            exit
        end
    end
    puts "Yes"
end