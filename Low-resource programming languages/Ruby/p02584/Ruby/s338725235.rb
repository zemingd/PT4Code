x,k,d = gets.split(" ").map{|i| i.to_i}
x *= -1 if x < 0
d *= -1 if d < 0

if x > d*k
    print(x-d*k)
    return
end

sa = d*k - x
n = sa/(2*d)
n_over = n + 1


l1 = sa-n*2*d
l2 = (sa-n_over*2*d)*-1

print([l1,l2].min)
