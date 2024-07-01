# Your code here!

a,b=gets.split().map(&:to_i)

g1 = [1,3,5,7,8,10,12]
g2 = [4,6,9,11]

flag = false

if(g1.include?(a)&&g1.include?(b))
    flag = true
end

if(g2.include?(a)&&g2.include?(b))
    flag = true
end

puts (flag ? "Yes":"No")