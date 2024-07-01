# coding: utf-8
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

nn = inputs[0][0]
arr = []
for i in 1..5 do
  arr << inputs[i][0]
end

# body
if $debugFlag
  p nn
  p arr
end

min = arr.min
ans = 5 + (nn.to_f / min).ceil - 1

puts ans
