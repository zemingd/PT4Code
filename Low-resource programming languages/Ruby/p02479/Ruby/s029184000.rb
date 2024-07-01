def periCircle(x)
   2 * PI * x
end

def areaCircle(x)
   PI * (x ** 2)
end

r = gets.to_f
include Math
printf("%.6f %.6f\n", areaCircle(r),
       periCircle(r))