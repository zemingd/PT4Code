people, point, num = gets.split(" ").map(&:to_i)
ans = readlines.map(&:to_i)

points = Array.new(people,point)
n = points.size

ans.each do |a|
    points[a-1] += 1
end

points.each do |point|
    if point > num
        puts 'Yes'
    else
        puts 'No'
    end
end