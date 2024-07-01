w, h, n = gets.chomp.split.map(&:to_i)
arr = []
n.times{
    x, y, a = gets.chomp.split.map(&:to_i)
    case a
    when 1 then arr[0] = x if arr[0].nil? || arr[0] < x
    when 2 then arr[1] = x if arr[1].nil? || arr[1] > x
    when 3 then arr[2] = y if arr[2].nil? || arr[2] < y
    when 4 then arr[3] = y if arr[3].nil? || arr[3] > y
    end
}

map = Array.new(h){"W" * w}
arr.each_with_index{|z, i|
    next if z.nil?
    case i
    when 0
        h.times{|y2| map[y2][0, z] = "B" * z} if z > 0
    when 1
        h.times{|y2| map[y2][z, w - z] = "B" * (w - z)} if z < w
    when 2
        0.upto(z - 1){|z2| map[z2] = "B" * w}
    when 3
        z.upto(h - 1){|z2| map[z2] = "B" * w}
    end
}

sum = 0
map.each{|m| sum += m.count("W")}
puts sum