$h, $w = gets.split.map(&:to_i)
ss = $h.times.map{|i| gets.chomp.chars }

def search(ss, sx, sy)
  hit_count = 1
  nxy = [[0, 1], [0, -1], [1, 0], [-1, 0]]
  nxy.each do |xy|
    now = [sx, sy]
    while true
      now = [now[0]+xy[0], now[1]+xy[1]]
      break if now[0] < 0 || now[0] >= $h || now[1] < 0 || now[1] >= $w
      break if ss[now[0]][now[1]] != '.'
      hit_count += 1
    end
  end
  hit_count
end

result = 0
$h.times do |hi|
  $w.times do |wi|
    next if ss[hi][wi] == '#'
    r = search(ss, hi, wi)
    result = r if result < r
  end
end

p result
