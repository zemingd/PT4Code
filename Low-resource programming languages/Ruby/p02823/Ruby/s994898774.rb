n,a,b = gets.chomp.split(' ').map(&:to_i)

dist = b - a
nDis = n - b
oDis = a - 1

nm = n - a
om = b - 1

if dist % 2 == 0 then
    if dist <= nm && dist <= om then
        puts dist /  2
        exit 0
    end
end

if nDis < oDis then
    puts nDis+dist
elsif oDis < nDis then
    puts oDis+dist
else
    puts nDis+dist
end
