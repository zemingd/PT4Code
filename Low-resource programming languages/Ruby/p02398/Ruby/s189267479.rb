ary = gets.split(" ").map(&:to_i)
x = 0

while ary[0] <= ary[1] do
    if (ary[2] % ary[0] == 0) then
        x = x + 1
    end
    ary[0] = ary[0] + 1
end
puts x