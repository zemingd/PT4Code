require 'scanf'
require 'matrix'

dummy = STDIN.gets
while str = STDIN.gets
    x1,y1,x2,y2,x3,y3,x4,y4=\
        str.scanf("%f %f %f %f %f %f %f %f") 
    v1=Vector[x2-x1,y2-y1].normalize
    v2=Vector[x4-x3,y4-y3].normalize
    eps=1.0e-6
    if (v1.inner_product(v2).abs-1.0).abs < eps then
        print "YES\n"
    else
        print "NO\n"
    end
end