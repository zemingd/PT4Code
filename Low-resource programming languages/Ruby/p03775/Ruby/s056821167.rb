n=gets.to_i

def func(a, b)
    [a.to_s.size, b.to_s.size].max
end

mi=11
n.times do |a|
    a+=1
    if a*a>n
        break
    end
    if n%a!=0
        next
    end
    mi=[mi, func(a, n/a)].min
end

puts mi