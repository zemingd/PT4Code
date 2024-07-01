def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

exit if $0 != __FILE__

$n, *$abc = cin
$l = Array.new($n).map { gets.to_i }

def dfs(i, a, b, c)
  if i == $n then
#    puts "#{i},#{a},#{b},#{c}"
    return 10000*8 if [a,b,c].min == 0
    return ($abc[0]-a).abs + ($abc[1]-b).abs + ($abc[2]-c).abs
  end
  r0 = dfs(i+1, a, b, c)
  r1 = dfs(i+1, a+$l[i], b, c) + 10
  r2 = dfs(i+1, a, b+$l[i], c) + 10
  r3 = dfs(i+1, a, b, c+$l[i]) + 10
#  p [r0,r1,r2,r3]
  [r0,r1,r2,r3].min
end

puts dfs(0, 0, 0, 0)-30