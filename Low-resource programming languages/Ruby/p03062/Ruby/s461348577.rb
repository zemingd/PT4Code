# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

def pd(str)
  p str if $debugFlag
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

xs = inputs[1]

# body
if $debugFlag
  p xs
end

minabs = 10**9 + 1
sum = 0
minusNumMod2 = 0
xs.each do |x_i|
  sum += x_i.abs
  minabs = x_i.abs if x_i.abs < minabs
  minusNumMod2 ^= 1 if x_i < 0
end

pd minusNumMod2
pd minabs
pd sum
if minusNumMod2 == 0
  puts sum  
else
  puts (sum - 2*minabs)
end
