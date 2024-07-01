n = gets.to_i
a = gets.chop.split.map(&:to_i)

l = [false]*8
over = 0

for x in a
    if x < 3200
        l[x/400] = true
    else
        over += 1
    end
end

mini =  l.count(true)

maxi =  [l.count(true)+over,8].min 

print("#{mini} #{maxi}")