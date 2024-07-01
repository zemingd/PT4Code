require 'set'
n = gets.chomp.to_i
s = gets.chomp
max = 0
for i in 0..n-1
    k = s.slice(0..i)
    l = s.slice(i+1..n)
    k = Set.new(k.chars)
    l = Set.new(l.chars)
    if (k & l).length > max
        max = (k & l).length
    end
end  
print(max)