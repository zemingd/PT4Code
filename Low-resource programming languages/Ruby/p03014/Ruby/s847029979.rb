$h, $w = gets.split.map(&:to_i)
ss = $h.times.map{|i| gets.chomp.chars }

hs = Array.new($h){ Array.new($w) }
ws = Array.new($h){ Array.new($w) }

def pre_count(ss, hs, ws, h, w)
  return if ss[h][w] == '#'

  unless hs[h][w]
    h_hit = 1
    h_post = h
    nh = h
    while (nh += 1) < $h && ss[nh][w] == '.'
      h_hit += 1
      h_post += 1
    end
    nh = h
    while (nh -= 1) >= 0 && ss[nh][w] == '.'
      h_hit += 1
    end
    (h..h_post).each do |i|
      hs[i][w] = h_hit
    end
  end

  unless ws[h][w]
    w_hit = 1
    w_post = w
    nw = w
    while (nw += 1) < $w && ss[h][nw] == '.'
      w_hit += 1
      w_post += 1
    end
    nw = w
    while (nw -= 1) >= 0 && ss[h][nw] == '.'
      w_hit += 1
    end
    (w..w_post).each do |i|
      ws[h][i] = w_hit
    end
  end
end

$h.times do |hi|
  $w.times do |wi|
    pre_count(ss, hs, ws, hi, wi)
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
