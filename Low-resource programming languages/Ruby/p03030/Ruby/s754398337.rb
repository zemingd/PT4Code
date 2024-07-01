N = gets.chomp.to_i
points_hash  = {}
N.times do |i|
    point = gets.chomp.split(' ')
    if points_hash[point[0]] == nil
        points_hash[point[0]] = Hash[point[1].to_i, i]
    else
        points_hash[point[0]][point[1].to_i] = i
    end
end
sities = points_hash.keys.sort
sities.each do |sity|
    points_hash[sity].keys.sort.reverse.each do |point|
        p points_hash[sity][point]+1
    end
end
