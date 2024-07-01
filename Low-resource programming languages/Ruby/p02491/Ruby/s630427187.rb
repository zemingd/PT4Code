require 'scanf'

def solve list
    a = list[0]
    b = list[1]
    printf "%d %d %.9f\n", a/b, a%b, a.to_f/b.to_f
end

while line = gets do
    solve line.chomp.scanf "%d %d"
end