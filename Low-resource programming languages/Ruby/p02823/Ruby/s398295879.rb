n,a,b = gets.chomp.split(' ').map(&:to_i)
 
dist = b - a
 
if dist % 2 == 0 then
    puts dist /  2
else
    nDis = n - b
    oDis = a - 1
    if nDis < oDis then
        puts nDis+(dist-1)/2 + 1
    elsif oDis < nDis then
        puts oDis+(dist-1)/2 + 1
    else
        puts nDis+(dist-1)/2 + 1
    end
end