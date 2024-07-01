$a, $b, $c, $d, $e, $f = gets.split.map(&:to_i)
$a *= 100
$b *= 100

def noudo(water, sugar)
  if sugar.zero?
    0
  else
    Rational(sugar, (water + sugar))
  end
end

$dfshash = {}

def dfs(water, sugar, max)
  return $dfshash[[water, sugar]] if $dfshash[[water, sugar]]
  mn = noudo(max.first, max.last)
  n = noudo(water, sugar)
  max = [water, sugar] if n > mn
  if water + sugar == $f
    return max
  end

  if !sugar.zero? && water / 100 * $e == sugar
    puts "#{water + sugar} #{sugar}"
    exit
  end
  d1 = d2 = d3 = d4 = [water, sugar]
  if water + $c + sugar <= $f && water/100 * $e >= sugar + $c
    d3 = dfs(water, sugar + $c, max.dup)
  end
  if water + $d + sugar <= $f && water/100 * $e >= sugar + $d
    d4 = dfs(water, sugar + $d, max.dup)
  end
  if water + $a + sugar <= $f
    d1 = dfs(water + $a, sugar, max.dup)
  end
  if water + $b + sugar <= $f
    d2 = dfs(water + $b, sugar, max.dup)
  end
  [d1, d2, d3, d4].each do |d|
    max = d if noudo(d.first, d.last) > noudo(max.first, max.last)
  end
  $dfshash[[water, sugar]] = max
end

max = [0, 0]
ans = dfs(0, 0, max)

puts "#{ans.first + ans.last} #{ans.last}"
