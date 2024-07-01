# util functions
class UnionFind
  def initialize(n) # n: number of elements in the forest
    @par  = []
    @rank = []
    @vs   = []  
    n.times do |i|
      @par[i] = i
      @rank[i] = 0
      @vs[i] = 1
    end
  end
  attr_accessor :par, :rank, :vs

  def find(x)
    raise "x = #{x} is out of range 0..#{@par.size - 1}" unless @par[x]
    if @par[x] == x
      return x
    else
      return find( @par[x] )
    end
  end

  def unite( x, y )
    xrt = find(x)
    yrt = find(y)
    return if xrt == yrt
    
    if @rank[xrt] > @rank[yrt]
      @par[yrt] = xrt
      @vs[xrt] += @vs[yrt]
    else
      @par[xrt] = yrt
      @vs[yrt] += @vs[xrt]
      @rank[yrt] += 1 if @rank[xrt] == @rank[yrt]
    end
  end

  def same( x, y ) # returns true/false
    return find( x ) == find( y )
  end

end # UnionFind

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

uf = UnionFind.new($nn)
$setE.reverse!
($setE.size-1).times do |i|
  if uf.same($setE[i][0]-1, $setE[i][1]-1 )
    result << cur
    next
  end

  cur -= uf.vs[ uf.find( $setE[i][0]-1 ) ] * uf.vs[ uf.find( $setE[i][1]-1 ) ]
  result << cur
  uf.unite( $setE[i][0]-1, $setE[i][1]-1 )
end

result.reverse.each do |e_i|
  puts e_i
end
