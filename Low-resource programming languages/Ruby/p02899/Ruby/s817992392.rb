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

lst = inputs[1]

# body
if $debugFlag
end

ans = []

lst.size.times do |i|
  ans[lst[i]] = i+1
end

pd ans

(ans.size-1).times do |i|
  if i == ans.size - 2
    print "#{ans[i+1]}\n"
  else
    print "#{ans[i+1]} "
  end
end
