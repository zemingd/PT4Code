max = 0
count = 0
gets
gets.split.map(&:to_i).each{|h|
    if h >= max
        count += 1
    end
    if h > max
        max = h
    end
}
puts count
