$h, $w = gets.split.map(&:to_i)
ss = $h.times.map{|i| gets.chomp.chars }

def search(ss, sx, sy)
  hit_count = 1

  nx = sx
  while (nx += 1) < $h && ss[nx][sy] == '.'
    hit_count += 1
  end
  nx = sx
  while (nx -= 1) >= 0 && ss[nx][sy] == '.'
    hit_count += 1
  end
  ny = sy
  while (ny += 1) < $w && ss[sx][ny] == '.'
    hit_count += 1
  end
  ny = sy
  while (ny -= 1) >= 0 && ss[sx][ny] == '.'
    hit_count += 1
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
