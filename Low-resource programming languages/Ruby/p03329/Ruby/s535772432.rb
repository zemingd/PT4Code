io = STDIN
n=io.gets.to_i
$coin=[1]
$max=100001
$dp=Array.new($max)
$dp[0]=0
def setup(p)
  i=1
  while (x=p**i;x<$max)
    $coin << x
    i+=1
  end
end
setup(6)
setup(9)
$coin.sort!
(1..$max).each do |i|
  $dp[i]=$coin.select{|x|x<=i}
              .map{|x|$dp[i-x]+1}
              .min
end
puts $dp[n]
