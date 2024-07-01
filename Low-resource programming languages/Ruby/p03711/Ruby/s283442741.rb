x,y=gets.split.map(&:to_i)
a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
c=[2]

r=->ar{ar.index(x)&&ar.index(y)}

if r[a]||r[b]||r[c] then
    puts "Yes"
else
    puts "No"
end