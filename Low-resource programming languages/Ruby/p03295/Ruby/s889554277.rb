N, M = gets.to_s.chomp.split(" ").map(&:to_i)

map = []
M.times do
    arr = Array.new(N-1, 0)
    s, e = gets.to_s.chomp.split(" ").map(&:to_i).map{|i|i-1}
    e = e - 1
    s.upto(e) do |i|
        arr[i] = 1
    end
    map << arr
end

stopping_bridge_num = 0
while map.size > 0 
    map2 = map.transpose

    max = 0
    max_line = []
    map2.each do |line|
        n = line.inject(&:+)
        if n > max
            max = n
            max_line = line
        end
    end

    max_line_size = max_line.size
    max_line.reverse.each_with_index do |e, i|
        map.delete_at(max_line_size - 1 - i) if e == 1
    end

    stopping_bridge_num += 1
end

p stopping_bridge_num