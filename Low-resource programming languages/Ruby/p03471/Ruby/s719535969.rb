a = gets.split(" ").map(&:to_i)

for i in 0..a.length do
    a[i]=a[i].to_i
end
x=0
y=0
z=0
for i in 1..a[0] do
    if a[1]>=10000 then
        a[1]-=10000
        x+=1
    elsif a[1]>=5000
        a[1]-=5000
        y+=1
    elsif a[1]>=1000
        a[1]-=1000
        z+=1
    end
end
if a[1]>0 then
    x=-1
    y=-1
    z=-1
end
temp=a[1]-(x+y+z)
while temp==0
    if temp>0 then
        if temp>=4 then
            if y>0 then
                y-=1
                z+=5
                temp-=4
            elsif x>0 then
                x-=1
                y+=2
                temp-=1
            else 
                x=-1
                y=-1
                z=-1
                break
            end
        elsif x>0 then
            x-=1
            y+=2
            temp-=1
        else 
            x=-1
            y=-1
            z=-1
            break
        end
    else 
        x=-1
        y=-1
        z=-1
        break
    end
end
puts ("#{x} #{y} #{z}")