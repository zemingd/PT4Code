# util functions
def dfs(x)
  return 0 if x > $num
  sum = 0
  if x.to_s.split("").uniq.size == 3
    sum += 1
  end

  [3,5,7].each do |i|
    sum += dfs(10*x + i)
  end
  return sum
end

# debug
debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if debugFlag

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
if debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end
$num = inputs[0][0]

# body
if debugFlag
end

puts dfs(0)
