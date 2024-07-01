list = ["a", "b", "c"].permutation(3).collect{|a| a.join("")}
input = gets.chomp!
if list.include?(input)
    puts("Yes")
else
    puts("No")
end