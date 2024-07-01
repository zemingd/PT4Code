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

arr = inputs[0]

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
end

a = (arr[1] - arr[0]).abs + (arr[2] - arr[1]).abs # 0, 1, 2
c = (arr[2] - arr[0]).abs + (arr[1] - arr[2]).abs # 0, 2, 1
b = (arr[0] - arr[1]).abs + (arr[2] - arr[0]).abs # 1, 0, 2
d = (arr[2] - arr[1]).abs + (arr[0] - arr[2]).abs # 1, 2, 0
e = (arr[0] - arr[2]).abs + (arr[1] - arr[0]).abs # 2, 0, 1
f = (arr[1] - arr[2]).abs + (arr[0] - arr[1]).abs # 2, 1, 0
puts [a,b,c,d,e,f].min
