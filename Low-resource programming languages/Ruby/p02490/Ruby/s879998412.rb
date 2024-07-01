require 'scanf'
 
def output list
    printf "%d %d\n", list[0], list[1]
end
 
while line = gets.chomp do
    if line == "0 0"
        break
    end
    output (line.scanf "%d %d").minmax
end