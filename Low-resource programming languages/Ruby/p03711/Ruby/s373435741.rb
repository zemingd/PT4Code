a=[1,3,5,7,8,10,12]
b=[4,6,9,11]
x,y=gets.split.map &:to_i
if(x==2)
    puts y==2?:Yes: :No
elsif(a.include?(x))
    puts a.include?(y)?:Yes: :No
else
    puts b.include?(y)?:Yes: :No
end