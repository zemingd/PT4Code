def fetch_dp_height(h, w)
  left = h
  right = h
  while left - 1 >= 0 && $field[left - 1][w] == '.'
    left -= 1
  end
  while right + 1 <= $H - 1 && $field[right + 1][w] == '.'
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
  while up - 1 >= 0 && $field[h][up - 1] == '.'
    up -= 1
  end
  while down + 1 <= $W - 1 && $field[h][down + 1] == '.'
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
$field = $H.times.map { gets.chomp.split("") }

$dp_height = Array.new($H).map{Array.new($W)}
$dp_width = Array.new($H).map{Array.new($W)}

max_point = 0
$H.times do |h|
  $W.times do |w|
    next unless $field[h][w] == '.'
    if $dp_height[h][w].nil?
      fetch_dp_height(h, w)
    end
    if $dp_width[h][w].nil?
      fetch_dp_width(h, w)
    end
    max_point = max(max_point, $dp_height[h][w] + $dp_width[h][w] + 1)
  end
end

puts max_point