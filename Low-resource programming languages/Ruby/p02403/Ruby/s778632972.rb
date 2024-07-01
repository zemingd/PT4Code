h=1,w=1
while h!=0 && w!=0
    h, w = gets.split.map(&:to_i)
    i=1
    while i<= h
      puts "#"*w
      i += 1
    end
    puts " "
end