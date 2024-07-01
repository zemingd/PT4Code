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
ll = inputs[0][1]

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
  p ll
end

arr = []
nn.times do |i|
  arr << ll + i
end

tmp_tgt = nil
arr.each do |a_i|
  if tmp_tgt == nil
    tmp_tgt = a_i
  else
    tmp_tgt = a_i if tmp_tgt.abs >= a_i.abs
  end
end

pd arr
pd arr.inject(:+)

ans = arr.inject(:+) - tmp_tgt

puts ans
