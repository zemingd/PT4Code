require 'scanf'
require 'matrix'

eps=0.00001/(200.0*(2.0**0.5))
n_lines = STDIN.gets.to_i
for i in 0..n_lines-1
    str = STDIN.gets
    x1,y1,x2,y2,x3,y3,x4,y4=\
        str.scanf("%f %f %f %f %f %f %f %f") 
    v1=Vector[x2-x1,y2-y1].normalize
    v2=Vector[x4-x3,y4-y3].normalize
    ip = v1.inner_product(v2).abs
    if    (ip-1.0).abs<eps then print "YES\n"
    elsif (ip+1.0).abs<eps then print "YES\n"
    else                        print "NO\n"
    end
end