A, B, C = gets.split(' ')

n = B.to_i / A.to_i

if n < C.to_i then
    print n
else
    print C.to_i
end