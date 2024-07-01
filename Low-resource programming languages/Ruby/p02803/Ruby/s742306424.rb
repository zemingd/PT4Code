def search(s, g, bun, cnt=0)
  bun[s[0]][s[1]] = true
  return nil if cnt-1 >= @min
  [[0,1],[1,0],[0,-1],[-1,0]].each do |y, x|
    nh = s[0] + y
    nw = s[1] + x
    next if !nh.between?(0, @h-1) || !nw.between?(0, @w-1) || bun[nh][nw]
    if [nh, nw] == g
      @min = [@min, cnt + 1].min
      return nil
    else
      cnt += 1
      search([nh, nw], g, bun, cnt)
      bun[nh][nw] = false
      cnt -= 1
    end
  end
end

@h, @w = gets.split.map(&:to_i)
mapp = []
roads = []
@h.times do |i|
  a = gets.chomp.split('').map{|str|str == "." ? false : true}
  mapp << a
  @w.times do |j|
    roads << [i, j] if !a[j]
  end
end
roads_n = roads.size

max = 0
(roads_n-1).times do |i|
  (i+1).upto(roads_n-1) do |j|
    @min = @h * @w
    search(roads[i], roads[j], mapp.map(&:dup))
    max = [max, @min].max
  end
end
p max