$h, $w = gets.chomp.split.map(&:to_i)

$a = []
$h.times do |i|
  $a[i] = Array.new(1000, 9999)
  l = gets.chomp
  j = 0
  while (j = l.index('#', j))
    $a[i][j] = 0
    j += 1
  end
end

$q = []

def bfs(i, j)
  if i != 0
    if $a[i-1][j] > $a[i][j] + 1
      $a[i-1][j] = $a[i][j] + 1
      $q.push((i-1)*$w + j)
    end
  end

  if j != 0
    if $a[i][j-1] > $a[i][j] + 1
      $a[i][j-1] = $a[i][j] + 1
      $q.push(i*$w + (j-1))
    end
  end

  if i != $h-1
    if $a[i+1][j] > $a[i][j] + 1
      $a[i+1][j] = $a[i][j] + 1
      $q.push((i+1)*$w + j)
    end
  end

  if j != $w-1
    if $a[i][j+1] > $a[i][j] + 1
      $a[i][j+1] = $a[i][j] + 1
      $q.push(i*$w + (j+1))
    end
  end
end

$h.times do |i|
  $w.times do |j|
    $q.push(i*$w + j) if $a[i][j] == 0
  end
end

while !$q.empty?
  i, j = $q.shift.divmod($w)
  bfs(i, j)
end

puts($a.map(&:max).max)