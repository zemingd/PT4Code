class Coord
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
  def north 
    Coord.new(x-1, y)
  end
  def south
    Coord.new(x+1, y)
  end
  def east
    Coord.new(x, y+1)
  end
  def west
    Coord.new(x, y-1)
  end
end

def fetch_next(s, dist, cur_xy, dir)
  nx = nil

  case dir
  when 'n'
    nx = cur_xy.north
    return nil if nx.x < 0
  when 's'
    nx = cur_xy.south
    return nil if nx.x >= s.size
  when 'e'
    nx = cur_xy.east
    return nil if nx.y >= s[0].size
  when 'w'
    nx = cur_xy.west
    return nil if nx.y < 0
  end
  s[nx.x][nx.y] == '.' && dist[nx.x][nx.y] == -1 ? nx : nil
end
    
    

h, w = gets.split("\s").map(&:to_i)
s = []

h.times do |i|
  s[i] = gets.strip
end

dist_max = -1

h.times do |i|
  w.times do |j|
    dist = Array.new(h).map { Array.new(w, -1) }
    cur = Coord.new(i, j)
    dist[cur.x][cur.y] = 0
    places_togo = []
    next if s[cur.x][cur.y] != '.'
    
    loop do  
      ['n', 's', 'e', 'w'].each do |dir|
        next unless nx = fetch_next(s, dist, cur, dir)
        
        places_togo.unshift(nx)
        dist[nx.x][nx.y] = dist[cur.x][cur.y] + 1
      end
      break if places_togo.empty?
    
      cur = places_togo.pop
    end

    d = dist.map { |n| n.max }.max
    dist_max = d if d > dist_max
  end
end

p dist_max
  