require 'scanf'

def solve list
    a = list[0].to_i
    b = list[1].to_i
    if ! b
        return
    end
    printf "%d %d %f\n", a/b, a%b, (a.to_f/b)
end

while line = gets do
    solve line.scanf "%d  %d"
end