def search(s, g, visited=Array.new(@h){Array.new(@w, 0)}, cnt=0)
  visited[s[0]][s[1]] = 1
  [[0,1],[1,0],[0,-1],[-1,0]].each do |y, x|
    break if cnt > @min
    nh = s[0] + y
    nw = s[1] + x
    next if !nh.between?(0, @h-1) || !nw.between?(0, @w-1)
    next if @map[nh][nw] == 1
    if visited[nh][nw] == 1
      next
    else
      cnt += 1
    end
    if [nh, nw] == g
      @min = [@min, cnt].min
    else
      search([nh, nw], g, visited, cnt)
    end
  end
end

@h, @w = gets.split.map(&:to_i)
@map = @h.times.map{gets.chomp.split('').map{|str|str == "." ? 0 : 1}}

roads = []
@h.times do |i|
  @w.times do |j|
    if @map[i][j] == 0
      roads << [i, j]
    end
  end
end
roads_n = roads.size

max = 0
(roads_n-1).times do |i|
  (i+1).upto(roads_n-1) do |j|
    @min = Float::INFINITY
    search(roads[i], roads[j])
    max = [max, @min].max
  end
end
p max