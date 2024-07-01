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

numToCost = [nil,2,5,5,4,5,6,3,7,6]

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
lst = inputs[1]

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
  p lst
end

dp = [""]
for i in 1..nn
  cand = [""]
  lst.each do |l_i|
    pd "l_i=#{l_i}, #{numToCost[l_i]}"
    if i - numToCost[l_i] >= 0 
      tmp = dp[i - numToCost[l_i]]
      if dp[i - numToCost[l_i]] != ""
        if tmp[0..0].to_i > l_i
          cand << tmp + l_i.to_s
        else
          cand << l_i.to_s + tmp 
        end
      end
    end
    if i - numToCost[l_i] == 0
      cand << l_i.to_s
    end
  end

  
  tmp_max = cand[0]
  cand.each do |c_i|
    if c_i.length > tmp_max.length 
      tmp_max = c_i
    elsif c_i.length == tmp_max.length  and c_i > tmp_max
      tmp_max = c_i
    end
  end

  dp[i] = tmp_max

  pd i
  pd cand
  pd dp[i]
  
end

pd dp

puts dp[nn]
