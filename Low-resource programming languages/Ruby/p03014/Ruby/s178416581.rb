def fetch_dp_height(h, w)
  left = h
  right = h
  while left - 1 >= 0 && $field[left - 1][w] == $dot
    left -= 1
  end
  while right + 1 <= $H - 1 && $field[right + 1][w] == $dot
    right += 1
  end
  point = right - left
  (left..right).each do |i|
    $dp_height[i][w] = point
  end
  point
end

def fetch_dp_width(h, w)
  up = w
  down = w
  while up - 1 >= 0 && $field[h][up - 1] == $dot
    up -= 1
  end
  while down + 1 <= $W - 1 && $field[h][down + 1] == $dot
    down += 1
  end
  point = down - up
  (up..down).each do |i|
    $dp_width[h][i] = point
  end
  point
end

def max(a, b)
  a > b ? a : b
end

$H,$W = gets.split.map(&:to_i)
$field = $H.times.map { gets.chomp }

$dp_height = Array.new($H).map{Array.new($W)}
$dp_width = Array.new($H).map{Array.new($W)}

points = [0]
$dot = '.'
$H.times do |h|
  $W.times do |w|
    next unless $field[h][w] == $dot
    if $dp_height[h][w].nil?
      fetch_dp_height(h, w)
    end
    if $dp_width[h][w].nil?
      fetch_dp_width(h, w)
    end
    points.push($dp_height[h][w] + $dp_width[h][w] + 1)
  end
end

puts points.max