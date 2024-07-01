rectangle = readlines.map(&:chomp).map{|num| num.split.map(&:to_i)}
rectangle.each do |h, w|
    break if h==0 && w==0
    str = ""
    w.times do
        str+="#"
    end
    h.times do
        puts str
    end
    puts ""
end
