s = gets.chomp
if s[0] == "a"
    a = 1
elsif s[0] == "b"
    b = 1
elsif s[0] == "c"
    c = 1
end 
if s[1] == "a"
    a = 1
elsif s[1] == "b"
    b = 1
elsif s[1] == "c"
    c = 1
end 
if s[2] == "a"
    a = 1
elsif s[2] == "b"
    b = 1
elsif s[2] == "c"
    c = 1
end 
if (a == 1) && (b == 1) && (c == 1)
    puts("Yes")
else 
    puts("No")
end