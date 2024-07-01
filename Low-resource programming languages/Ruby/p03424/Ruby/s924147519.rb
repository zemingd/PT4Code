n = gets.chomp.to_i
s = gets.chomp.split(" ")
for i in 0..s.length
    if s[i] == "Y"
        print("Four")
        exit()
    end
end
print("Three")    