N, m = gets.chomp.split(" ").map(&:to_i)
g = Array.new(N+1){Array.new()}

m.times do
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  g[a] << [b, c]
end

$v = false
def check(x, g, visitted)
  if visitted.include?(x)
    $v = true
    return
  end
  g[x].each do |b, c|
    if b.nil?
      return 
    else
      check(b, g, visitted + [x])
    end
  end
  return 
end

check(1, g, [])
if $v then
  puts "inf"
  exit
end

$ret = []

def fun(x, g, cost, visitted)
  if visitted.include?(x) then
    return
  elsif x == N then
    $ret << cost
    return
  end
  g[x].each do |b, c|
    fun(b, g, cost + c, visitted + [x]) unless b.nil?
  end
end
fun(1, g, 0, [])
puts $ret.max