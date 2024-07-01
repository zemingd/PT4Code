len = gets.to_i

line = gets.split(' ').map(&:to_i)

ans = line.reduce(:*)
if ans > 1000000000000000000 then p -1
else
    p ans
end
