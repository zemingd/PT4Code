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

kk = inputs[0][1]
ss = inputs[1][0]

# body
if $debugFlag
  p kk
  p ss
end

if ss[0..0] == "0"
  state_is_zero = true
else
  state_is_zero = false
end

origlen = ss.length
if ss[-1..-1] == "0"
  ss += "10"
else
  ss += "0"
end

queue = []
candidate = []
cur_cnt = 0
cand_val = 0
queue_cnt = 0
lastFlag = false ## ...
ss.length.times do |i|
  pd ss[i..i] 
  if state_is_zero == true
    if ss[i..i] == "0"
      cur_cnt += 1  
    else
      print "cur:" if $debugFlag
      pd cur_cnt
      queue << queue_cnt + cur_cnt
      queue_cnt = 0
      if kk > 1
        kk -= 1
      else
        lastFlag = true
      end
      cand_val += cur_cnt
      cur_cnt = 1
      state_is_zero = false
    end
  else
    if ss[i..i] == "0"
      print "cur:" if $debugFlag
      pd cur_cnt
      if lastFlag == true
        pd "cand update:#{cand_val + cur_cnt}"
        pd cand_val
        pd cur_cnt
        candidate << cand_val + cur_cnt        
        cand_val -= queue.shift
        lastFlag = false
      end
      cand_val += cur_cnt
      queue_cnt += cur_cnt      
      cur_cnt = 1
      state_is_zero = true      
    else
      cur_cnt += 1
    end    
  end
end

pd candidate
pd queue

if candidate.size == 0
  pd "all"
  puts origlen
else
  puts candidate.max
end
