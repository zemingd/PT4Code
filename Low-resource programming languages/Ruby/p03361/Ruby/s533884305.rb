def test(map, x, y, height, width)
  return true if map[y].chars[x] == '.'
  w = x - 1 >= 0 && map[y].chars[x - 1] == '#'
  e = x + 1 < width && map[y].chars[x + 1] == '#'
  n = y - 1 >= 0 && map[y - 1].chars[x] == '#'
  s = y + 1 < height && map[y + 1].chars[x] == '#'

#  puts "x: #{x}, y:#{y}, w: #{w}, e:#{e}, n:#{n}, s:#{s}"
  return w || e || n || s
end

def solve(h, w, map)
  for i in 0...h
    for j in 0...w
      if !test(map, j, i, h, w)
        puts "No"
        return
      end
    end
  end
  puts "Yes"
end

h, w = gets.split(" ").map{|v|v.to_i}
map = []
h.times{|t|
  map << gets.strip
}
solve(h, w, map)
