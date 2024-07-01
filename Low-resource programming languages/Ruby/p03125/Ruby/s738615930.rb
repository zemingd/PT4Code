line = gets.split(' ').map(&:to_i)

A = line[0]
B = line[1]

if B % A == 0 then
    p A + B
else
    p B - A
end