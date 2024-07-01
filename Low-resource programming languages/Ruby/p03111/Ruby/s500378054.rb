n, *dests = gets.split(' ').map(&:to_i).sort
dests.reverse!
$srcs = n.times.map { gets.to_i }

def search(dest)
  $srcs.sort_by! { |s| (s - dest).abs }
  v = dest - $srcs.first
  if v.abs <= 10
    $srcs.shift
    return v.abs
  end

  return ($srcs.shift - dest) if $srcs[0] == $srcs.min
  return ($srcs.shift - dest).abs if $srcs.size == 1

  min = { v: 10000000000 }
  $srcs.each.with_index do |s1, i|
    $srcs.each.with_index do |s2, j|
      next if i == j
      v = dest - (s1 + s2)
      min = { v: v, i: i, j: j } if v.abs < min[:v].abs
    end
  end

  return ($srcs.shift - dest).abs if min[:v].abs > ($srcs.first - dest).abs
  
  $srcs << [min[:i], min[:j]].sort.reverse.inject(0) { |s, i| s + $srcs.delete_at(i) }
  10 + search(dest)
end

mp = 0

dests.reject! do |dest|
  $srcs.sort_by! { |s| (s - dest).abs }
  if $srcs[0] == dest
    $srcs.shift
    true
  else
    false
  end
end

$srcs.sort!

dests.sort!.reject! do |dest|
  if $srcs.min > dest
    mp += $srcs.shift - dest
    true
  else
    break
  end
end

dests.reverse.each do |dest|
  mp += search(dest)
end

puts mp
