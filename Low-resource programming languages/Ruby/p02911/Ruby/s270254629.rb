people, point, num = gets.split(" ").map(&:to_i)
ans = readlines.map(&:to_i)

points = Array.new(people,point)
n = points.size

ans.each do |a|
    index = 0
    n.times do
        if index != (a-1)
            points[index] -= 1
        end
        index += 1
    end
end

points.each do |point|
    if point > 0
        puts 'Yes'
    else
        puts 'No'
    end
end