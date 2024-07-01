A, B = gets.split(' ')

if B.to_i % A.to_i == 0 then
    print A.to_i + B.to_i
else
    print B.to_i - A.to_i
end