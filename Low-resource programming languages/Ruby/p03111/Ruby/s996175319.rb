# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

def pd(str)
  p str if $debugFlag
end

def printd(str)
  print str if $debugFlag
end

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

$aa = inputs[0][1]
$bb = inputs[0][2]
$cc = inputs[0][3]
arr = inputs[1..-1].flatten


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
if $debugFlag
  p $aa
  p $bb
  p $cc
  p arr
end

def rec(x, y, z, arr, cost, xnum, ynum, znum)
  if arr == []
    if xnum > 0 and ynum > 0 and znum > 0
      tmp = cost + (x - $aa).abs + (y - $bb).abs + (z - $cc).abs - 30
      return tmp
    else
      return nil
    end
  end
  
  cand = []
  cand << rec(x + arr[0], y, z, arr[1..-1], cost + 10, xnum+1, ynum, znum)
  cand << rec(x, y + arr[0], z, arr[1..-1], cost + 10, xnum, ynum+1, znum)
  cand << rec(x, y, z + arr[0], arr[1..-1], cost + 10, xnum, ynum, znum+1)
  cand << rec(x, y, z, arr[1..-1], cost, xnum, ynum, znum)
  cand.compact!

  return cand.min
end

puts rec(0, 0, 0, arr, 0, 0, 0, 0)
