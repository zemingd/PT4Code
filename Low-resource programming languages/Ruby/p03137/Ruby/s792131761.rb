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

nn = inputs[0][0]
arr = inputs[1].sort

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
  p nn
  p arr
end

costs = []
for i in 0..arr.length-2 do
  costs << arr[i+1] - arr[i]
end

costs.sort!

pd costs

val = 0
(costs.length - nn + 1).times do |j|
  val += costs[j]
end

puts val
