# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

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

# body
$ss = inputs[0][0]
if $debugFlag
  p $ss
end

cnt = 0
while $ss.size >= 3 or $ss == "01" or $ss == "10"
  if $debugFlag
    print "ss: "
    p $ss
  end
  
  if $ss == "01" or $ss == "10"
    cnt += 2
    break
  end

  ($ss.size - 2).times do |i|
    case $ss[i..i+2]
    when "101" then
      $ss[i..i+2] = "1"; cnt += 2
    when "010" then
      $ss[i..i+2] = "0"; cnt += 2
    when "110" then
      $ss[i..i+2] = "1"; cnt += 2
    when "011" then
      $ss[i..i+2] = "1"; cnt += 2
    when "100" then
      $ss[i..i+2] = "0"; cnt += 2
    when "001" then
      $ss[i..i+2] = "0"; cnt += 2
    end
  end
end

puts cnt
