a = "abcdefghijklmnopqrstuvwxyz"

C = gets.chomp
i = 0
while i < 25
    if C == a[i]
        puts a[i+1]
    end
    i += 1
end