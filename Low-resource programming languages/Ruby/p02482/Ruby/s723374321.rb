require 'scanf'

while line = gets do
    list = line.scanf "%d %d"
    a = list[0]
    b = list[1]
    if a < b
        puts "a < b"
    elsif a == b
        puts "a == b"
    else
        puts "a > b"
    end
end