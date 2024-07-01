require 'scanf'

def solve r
    printf "%f %f\n", r*r*Math::PI, 2*r*Math::PI
end

while line = gets do
    solve (line.scanf "%f")[0]
end