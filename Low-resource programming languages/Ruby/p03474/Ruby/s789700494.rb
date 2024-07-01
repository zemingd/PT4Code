a,b = gets.chomp.split.map(&:to_i)
s = gets.chomp
for i in 0...s.length
    if i == a
        if s[i] != "-"
            print("No")
            exit()
        end
    else
        if ! (s[i] =~ /^[0-9]+$/)
            print("No")
            exit()
        end
    end
end
print("Yes")