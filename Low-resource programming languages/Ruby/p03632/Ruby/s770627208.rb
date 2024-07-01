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

input = inputs[0]

# body
if $debugFlag
end

aa = input[0]
bb = input[1]
cc = input[2]
dd = input[3]

cnt = 0
for i in 0..100 do
  cnt += 1 if aa <= i and i <= bb and cc <= i and i <= dd
end

puts [cnt-1, 0].max
