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

acnt = 0
bcnt = 0
ss.length.times do |i|
  if i % 2 == 0
    if ss[i..i] == "0"
      acnt += 1 
    else
      bcnt += 1
    end
  else
    if ss[i..i] == "0"
      bcnt += 1 
    else
      acnt += 1
    end
  end
end

puts [acnt, bcnt].min

