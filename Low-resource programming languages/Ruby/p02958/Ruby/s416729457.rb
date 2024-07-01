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
  p lst
end

flag1 = true
for i in 1..lst.size-1
  if lst[i-1] > lst[i]
    flag1 = false
    break
  end
end

if flag1 == true
  puts "YES"
  exit
end

for i in 0..lst.size-2
  for j in i+1..lst.size-1
    flag2 = true
    tmp_lst = lst.clone
    tmp_lst[i], tmp_lst[j] = tmp_lst[j], tmp_lst[i]
    for k in 1..lst.size-1
      if tmp_lst[k-1] > tmp_lst[k]
        flag2 = false
      end
    end
    break if flag2 == true
  end
  break if flag2 == true
end

if flag2 == true
  puts "YES"
else
  puts "NO"
end
