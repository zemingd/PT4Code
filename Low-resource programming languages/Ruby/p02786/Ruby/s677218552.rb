h=gets.to_i
cnt=0
d=100
if h==1
    p 1
    exit
end
x=1
until h==1 do
    h/=2
    cnt=cnt+x*2
    x*=2
end
p cnt+1