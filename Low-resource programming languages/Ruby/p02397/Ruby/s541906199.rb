i = 0
swap = Array.new
data = Array.new

while (str = gets) != "0 0\n"
    str = str.chomp
    swap = str.split(' ').sort
    data[i] = swap
    i += 1
end

data.each do |status|
    print status[0], ' ', status[1], "\n"
end