$h, $w = gets.split.map(&:to_i)
ss = $h.times.map{|i| gets.chomp.chars }

hs = Array.new($h){ Array.new($w) }
ws = Array.new($h){ Array.new($w) }

def pre_count(ss, h, w)
  return if ss[h][w] == '#'
  h_hit = 1

  nh = h
  while (nh += 1) < $h && ss[nh][w] == '.'
    h_hit += 1
  end
  nh = h
  while (nh -= 1) >= 0 && ss[nh][w] == '.'
    h_hit += 1
  end

  w_hit = 1
  nw = w
  while (nw += 1) < $w && ss[h][nw] == '.'
    w_hit += 1
  end
  nw = w
  while (nw -= 1) >= 0 && ss[h][nw] == '.'
    w_hit += 1
  end

  return [h_hit, w_hit]
end

$h.times do |hi|
  $w.times do |wi|
    hs[hi][wi], ws[hi][wi] = pre_count(ss, hi, wi)
  end
end

result = 0
$h.times do |hi|
  $w.times do |wi|
    next if ss[hi][wi] == '#'
    r = hs[hi][wi] + ws[hi][wi] - 1
    result = r if result < r
  end
end

p result
