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

# body

$aa = inputs[0][0]
$bb = inputs[0][1]
$cc = inputs[0][2]

if $debugFlag
  p $aa
  p $bb
  p $cc  
end

if ($bb / $aa) > $cc
  res = $cc
else
  res = $bb / $aa
end
puts res

