require 'prime'

# util functions
def gcd(arr) # arr: Array of non-negative integers
  if arr.size < 2
    raise "array (#{arr}) size is less than 2."
  end
  
  def gcd_two(a, b) # assume b <= a
    return a if b % a == 0
    return gcd_two(b % a, a)
  end

  g = arr[0]
  for i in 1..arr.size - 1 do
    g = gcd_two([g, arr[i]].min, [g, arr[i]].max)
  end
  return g
end


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

# input check
if $debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

aa = inputs[0][0]
bb = inputs[0][1]

gg = gcd([aa, bb])

# body
if $debugFlag
  p gg
end

gglst = gg.prime_division
puts gglst.size + 1
