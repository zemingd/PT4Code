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
  if lc == 1
    inputs << l.chomp
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

ss = inputs[1]
qs = inputs[2..-1]

# body
if $debugFlag
  p ss
  p qs
end

arr = []
idx = 0
sslen = ss.length
accnt = 0
while idx < sslen
  if ss[idx..idx+1] == "AC"
    accnt += 1    
    arr << accnt
    arr << accnt
    idx += 2
  else
    arr << accnt
    idx += 1
  end
end

pd ss
pd arr

qs.each do |s_j, e_j|
  chkarr = arr[s_j-1..e_j-1]
  if chkarr.size <= 1
    ret = 0
  else
    if ss[s_j-1..s_j] == "AC"
      min = chkarr[0]
    else
      min = chkarr[0] + 1
    end

    if chkarr[-2] == chkarr[-1]
      max = chkarr[-1]
    else
      max = chkarr[-1] - 1
    end
    
    if max < min
      ret = 0
    else
      ret = max - min + 1
    end
  end

  puts ret
end
