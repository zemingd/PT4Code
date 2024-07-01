C = 1_000_000_007

n, m = gets.split.map(&:to_i)
broken = m.times.map {gets.to_i}

$memo = Array.new(n + 1)
$memo[0] = 1
$memo[1] = 1
broken.each {|s| $memo[s] = 0}

def steps(num)
  return 0 if num < 0
  return $memo[num] if $memo[num]
  $memo[num] = ((steps(num - 1) + steps(num - 2)) || 0) % C
end

puts steps(n)