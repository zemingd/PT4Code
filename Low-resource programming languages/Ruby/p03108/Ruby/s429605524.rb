# util functions
# union find
$uf_par  = []
$uf_rank = []
$uf_vs   = []
def uf_init( num )
  $uf_par  = []
  $uf_rank = []
  $uf_vs   = []  
  num.times do |i|
    $uf_par[i] = i
    $uf_rank[i] = 0
    $uf_vs[i] = 1
  end
end

def uf_find(x)
  raise "x = #{x} is out of range 0..#{$uf_par.size - 1}" unless $uf_par[x]
  if $uf_par[x] == x
    return x
  else
    return uf_find( $uf_par[x] )
  end
end

def uf_unite( x, y )
  xrt = uf_find(x)
  yrt = uf_find(y)
  return if xrt == yrt
  
  if $uf_rank[xrt] > $uf_rank[yrt]
    $uf_par[yrt] = xrt
    $uf_vs[xrt] += $uf_vs[yrt]
  else
    $uf_par[xrt] = yrt
    $uf_vs[yrt] += $uf_vs[xrt]
    $uf_rank[yrt] += 1 if $uf_rank[xrt] == $uf_rank[yrt]
  end
end

def uf_same( x, y ) # rets true/false
  return uf_find( x ) == uf_find( y )
end

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

# input
inputs = []
lc = 0
while l = $stdin.gets do
  if false
    inputs << l.chomp.split(" ").map(&:to_s)
  else
    inputs << l.chomp.split(" ").map(&:to_i)
  end
  lc += 1
end

# input check
if $debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

# body
$nn = inputs[0][0]
$mm = inputs[0][1]
$setE = inputs[1..-1]

if $debugFlag
  print "nn: "
  p $nn
  print "mm: "
  p $mm
  print 
  p $setE
end

result = []
cur = $nn * ($nn - 1) / 2
result << cur

uf_init( $nn )
$setE.reverse!
($setE.size-1).times do |i|
  if uf_same($setE[i][0]-1, $setE[i][1]-1 )
    puts cur
    next
  end

  cur -= $uf_vs[ uf_find( $setE[i][0]-1 ) ] * $uf_vs[ uf_find( $setE[i][1]-1 ) ]
  result << cur
  uf_unite( $setE[i][0]-1, $setE[i][1]-1 )
end

result.reverse.each do |e_i|
  puts e_i
end
