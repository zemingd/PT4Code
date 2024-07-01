# util functions
def dfs( zero_avail, flag, list, history )
  if list == []
    if history.uniq.size == 3
      # print "ok: "
      # p history
      return 1
    else
      # print "ng: "
      # p history      
      return 0
    end
  else
    sum = 0
    next_list = list.clone
    next_list.shift
    sum += dfs( true, true, next_list, history.clone ) if zero_avail
    sum += dfs( false, (list[0] != 3), next_list, (history.clone << 3) ) if list[0] >= 3 or flag
    sum += dfs( false, (list[0] != 5), next_list, (history.clone << 5) ) if list[0] >= 5 or flag
    sum += dfs( false, (list[0] != 7), next_list, (history.clone << 7) ) if list[0] >= 7 or flag   
    return sum
  end
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
num = inputs[0][0]

# body
if debugFlag
end

list = []
9.times do |i|
  if num >= 10**i 
    elem = (num / (10**i)) % 10
    list << elem
  end
end
list.reverse!

puts dfs( true, false, list, [] )
