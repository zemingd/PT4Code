#set
n = gets.chomp.to_i
s = gets.chomp.split("")

#main
(0 .. n - 2).each do |i|
    if s[n - 1 - i] == s[n - 2 -i] then 
        s.delete_at(n - 1 -i)
    end
end
print ("#{s.join.length}\n")