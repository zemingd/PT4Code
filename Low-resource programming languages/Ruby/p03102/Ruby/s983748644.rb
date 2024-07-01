# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

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

cc  = inputs[0][2]
bbs = inputs[1]
srcs = inputs[2..-1]

# body
if $debugFlag
  p cc
  p bbs
  p srcs
end

cnt = 0
srcs.each do |s_i|
  sum = 0
  bbs.size.times do |j|
    sum += bbs[j]*s_i[j]
  end
  cnt += 1 if sum + cc > 0
end

puts cnt
