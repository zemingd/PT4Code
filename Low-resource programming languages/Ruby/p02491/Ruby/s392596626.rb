require 'scanf'

def solve list
    a = list[0].to_i
    b = list[1].to_i
    printf "%d %d %.12f\n", a/b, a%b, (a.to_f/b)
end

while line = gets do
    solve line.scanf "%d  %d"
end