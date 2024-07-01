n = gets.chomp.to_i
s = gets.chomp.split("")
i = 0
kazu = n
(0..n-1).each do 
    kazu -= 1 if s[i] == s[i+1]
    i += 1
end
puts kazu