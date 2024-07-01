arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end
peak = arr[1]
maps=Array.new(arr[0][0]).fill(0)
(arr[2..-1]).each{|i|
    if peak[i[0]-1] == peak[i[1]-1] then
        maps[i[0]-1] = -1
        maps[i[1]-1] = -1
    elsif peak[i[0]-1] > peak[i[1]-1]
        maps[i[1]-1] = -1
    else
        maps[i[0]-1] = -1
    end
}
puts maps.count(0)