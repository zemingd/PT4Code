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

aa = inputs[0][0]
bb = inputs[0][1]

# body
if $debugFlag
  p aa
  p bb
end

ret = 0
if aa > bb
  ret += aa
  aa -= 1
else
  ret += bb
  bb -= 1
end

if aa > bb
  ret += aa
  aa -= 1
else
  ret += bb
  bb -= 1
end

puts ret
