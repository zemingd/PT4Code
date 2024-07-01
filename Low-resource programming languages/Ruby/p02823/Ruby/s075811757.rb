n,a,b = gets.chomp.split(' ').map(&:to_i)

dist = (a-b).abs
big = 0
small = 0

if a == b then
    puts 0 
    exit 0
end

if a < b then
    big = b
    small = a
else
    big = a
    small = b
end

if dist % 2 == 0 then
    puts dist /  2
else
    nDis = n - big
    oDis = small - 1
    if nDis < oDis then
        puts nDis+dist
    else
        puts oDis+dist
    end

end