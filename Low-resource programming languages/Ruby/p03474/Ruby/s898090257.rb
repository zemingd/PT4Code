input = gets.chomp.split("")
A = input[0].to_i
B = input[1].to_i

S = gets.chomp

flag = false
if A >= 1 && B <= 5
if S.chars[A] == "-" 
    flag = true
end

for i in 0..A-1
    if S.chars[i] == "-"
        flag = false
    end
end

for i in A+1..B-1
    if S.chars[i] == "-"
        flag = false
    end
end

if flag == true
    puts "Yes"
else
    puts "No"
end
end