$tg = []

def build(ts)
  tn = []
  ts.each do |ss|
    s = ss.to_s
    ['3', '5', '7'].each do |c|
      s.length.times do |i|
        ns = s.dup
        ns.insert(i, c)
        tn.push(ns.to_i)
      end
    end
  end
  tn.uniq!

  return tn
end

def solve(ns)
  fig = ns.length
  n = ns.to_i

  ts = [ 357, 375, 537, 573, 735, 753]
  $tg.push(ts)
  for i in 3...fig do
    $tg.push(ts)
    ts = build(ts)
    $tg.push(ts)
  end

  $tg.flatten!
  $tg.sort!.uniq!
  $tg.reverse!
  at = $tg.length
  $tg.length.times do |j|
     if $tg[j] <= n
       at = j
       break
     end
  end
  num = $tg.length - at
  return num
end

ns = gets.chomp
num = solve(ns)
puts num
