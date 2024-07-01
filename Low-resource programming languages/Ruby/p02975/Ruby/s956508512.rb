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

flag = true
if nn % 3 != 0
  val = lst[0]
  lst.each do |l_i|
    if l_i != val
      flag = false
      break
    end
  end
  if val != 0
    flag = false
  end
else
  cnt = 0
  vals_hh = {}
  lst.each do |l_i|
    if vals_hh[l_i] == nil
      if cnt == 3
        flag = false
        break
      else
        cnt += 1
        vals_hh[l_i] = 1
      end
    else
      vals_hh[l_i] += 1
    end
  end # l_i
  arr = vals_hh.to_a
  pd arr
  if arr.size == 1
    if !(arr[0][0] == 0)
      flag = false
    end
  elsif arr.size == 2
    if !((arr[0][0] == 0 and (arr[0][1]*2 == arr[1][1])) or (arr[1][0] == 0 and (arr[0][1] == arr[1][1]*2)))
      flag = false
    end
  elsif !(arr[0][0] ^ arr[1][0] ^ arr[2][0] == 0 and arr[0][1] == arr[1][1] and arr[1][1] == arr[2][1])
    flag = false
  end
end

if flag == true
  puts "Yes"
else
  puts "No"
end
