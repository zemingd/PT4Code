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
arr = []
lc = 0
nn = 0
while l = $stdin.gets do
  if lc == 0
    nn = l.chomp.to_i
  else
    arr << l.chomp.to_i
  end
  lc += 1
end

# body
if $debugFlag
  p nn
  p arr
end

puts (nn.to_f/arr.min).ceil + 4
