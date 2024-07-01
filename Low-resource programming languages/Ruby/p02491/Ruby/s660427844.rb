require 'scanf'

def solve list
    a = list[0]
    b = list[1]
    printf "%d %d %.9f", a/b, a%b, a.to_f/b
end

while line = gets do
    solve line.scanf "%d %d"
end