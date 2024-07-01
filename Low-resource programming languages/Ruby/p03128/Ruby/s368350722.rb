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
mm = inputs[0][1]
arr = inputs[1]

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
  p mm
  p arr
end

match = [0,2,5,5,4,5,6,3,7,6]

dp = [0]
for i in 1..nn do
  tmp_max = 0
  for j in 0..arr.size-1 do
    if i - match[arr[j]] > 0 and dp[i - match[arr[j]]] > 0
      cur = dp[i - match[arr[j]]] * 10 + arr[j]
      tmp_max = cur if cur > tmp_max
      cur = dp[i - match[arr[j]]] + arr[j]*(dp[i - match[arr[j]]].to_s(10).length-1)
      tmp_max = cur if cur > tmp_max 
    end
    tmp_max = arr[j] if i == match[arr[j]] and arr[j] > tmp_max
    pd "i=#{i}, j=#{j}, tmp_max=#{tmp_max}"
  end
  dp[i] = tmp_max
  pd dp
end

pd dp
puts dp[-1]
