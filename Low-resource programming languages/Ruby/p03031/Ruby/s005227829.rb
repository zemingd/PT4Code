$n, m = gets.split.map(&:to_i)

$bulbs = []
$res = 0
# $set = []

def bulb_on?(bulb, condition, switches)
  n = 0
  bulb.each { |i| n += switches[i] }
  return (n % 2) == condition
end

def solve(switches, idx, conditions)
  if idx == $n
    return if $n == 0
    all_on = true
    $bulbs.each_with_index do |b, bi|
      unless bulb_on?(b, conditions[bi], switches)
        all_on = false
        break
      end
    end
    $res += 1 if all_on
  else 
    [0, 1].each do |i|
      switches[idx] = i
      solve(switches, idx + 1, conditions)
    end
  end
end


m.times do |i|
  inp = gets.split.map(&:to_i)
  inp.shift
  $bulbs.push(inp.map { |i| i-1 })
end

switches = Array.new(10, 0)
conditions = gets.split.map(&:to_i)
solve(switches, 0, conditions)

puts $res
