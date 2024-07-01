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
  if true
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

ss = inputs[0][0]

# body
if $debugFlag
  p ss
end

arr = []
cnt = 0
ss.length.times do |i|
  if ss[i..i] == "A" or ss[i..i] == "T" or ss[i..i] == "C" or ss[i..i] == "G"
    cnt += 1
  else
    cnt = 0
  end
  arr << cnt
end
pd arr
puts arr.max
