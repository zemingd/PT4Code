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
    print status[0].to_i, ' ', status[1].to_i, "\n"
end