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

# input check
if $debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

nn  = inputs[0][0]
kk  = inputs[0][1]
lst = inputs[1]

# body
if $debugFlag
  p nn
  p lst
end

dp = [0]

for i in 1..nn-1
  min = nil  
  for j in 1..kk
    if i >= j
      tmp = ((lst[i] - lst[i-j]).abs + dp[i-j])
      if min == nil
        min = tmp
      else
        min = [min, tmp].min
      end
    end
  end
  dp[i] = min
end

puts dp[-1]
