A,B,C = gets.split(" ").map{|i|i.to_i}

if B > A*C then
    puts C
else
    puts B / A
end