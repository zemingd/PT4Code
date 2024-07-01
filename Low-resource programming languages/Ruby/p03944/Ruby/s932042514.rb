w, h, n = gets.split.map(&:to_i)
ary = n.times.map{ gets.split.map(&:to_i) }

cell = Array.new(w).map{Array.new(h, 0)}

ary.each do |el|
    case el[2]
    when 1
        (0..el[0]).each do |x|
            (0...h).each do |y|
                cell[x][y] = 1
            end
        end
    when 2
        (el[0]...w).each do |x|
            (0...h).each do |y|
                cell[x][y] = 1
            end
        end
    when 3
        (0...w).each do |x|
            (0...el[1]).each do |y|
                cell[x][y] = 1
            end
        end
    when 4
        (0...w).each do |x|
            (el[1]...h).each do |y|
                cell[x][y] = 1
            end
        end
    end
end

puts cell.flatten.count{|el| el == 0}