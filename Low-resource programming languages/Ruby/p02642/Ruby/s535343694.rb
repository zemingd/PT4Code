n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
INF = (10 ** 6)
arr = Array.new(INF+1,0)
a.each do |i|
    next if arr[i] == 2 
    i.step(INF, i) do |j| 
        arr[j] += 1 
    end
end
count = 0
puts a.slect{|o| b[o] == 1}.size
# a.each do |i|
#     count += 1 if arr[i] == 1
# end
# puts count