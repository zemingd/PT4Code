h, w = gets.strip.split.map(&:to_i)

aa = Array.new(h) { [0]*w }
targets = []

h.times do |i|
  gets.chomp.each_char.with_index do |c,j|
    next if c == '.'
    aa[i][j] = 1
    targets << [i, j]
  end
end

d = [0, 1, 0, -1]
@dd = 4.times.map {|i| [d[i], d[i^1]] }
def dirs(y, x)
  @dd.map {|dy, dx| [dy+y, dx+x] }
end

INF = 10**4
dist = Array.new(h) { [INF]*w }
targets.each do |y,x|
  dist[y][x]=0
end

q = targets
until q.empty?
  cy, cx = c = q.shift
  next if aa[cy][cx]=1
  dirs(*c).each do |y, x|
    next if y<0 || y>=h || x<0 || x>=w || aa[y][x]==1 || dist[y][x] <= dist[cy][cx]+1
    dist[y][x] = dist[cy][cx]+1
    aa[y][x]=1
    q.push([y, x])
  end
end

p dist.flatten.max
