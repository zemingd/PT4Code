w,h,x,y=gets.split(" ").map(&:to_f)
a = w*h/2.0
if (w-x == w/2) and (h-y == h/2) then
    b = 1
else
    b = 0
end

print a, " ", b
