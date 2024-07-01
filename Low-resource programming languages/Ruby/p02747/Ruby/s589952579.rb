s = gets.chomp
cmp = "hi"
flag = 0
for i in 1..5
    if cmp*i == s
        flag = 1
        break
    end
end
if flag == 1
    puts "Yes"
else
    puts "No"
end
