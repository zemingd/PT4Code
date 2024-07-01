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

aa = inputs[0][0]
bb = inputs[0][1]
uu = inputs[0][2]
vv = inputs[0][3]

if aa < bb
  ww = bb
  hh = aa
  uu, vv = vv, uu
else
  ww = aa
  hh = bb
end
xx = [uu, ww-uu].max
yy = [vv, hh-vv].max

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
  p "aa=#{aa}"
  p "bb=#{bb}"
  p "uu=#{uu}"
  p "vv=#{vv}"
  p "ww=#{ww}"
  p "hh=#{hh}"    
  p "xx=#{xx}"
  p "yy=#{yy}"  
end

area = 0
flag = 0

if ((ww % 2 == 0) and (ww/2 == xx)) and ((hh % 2 == 0) and (hh/2 == yy))
  flag = 1
else
  flag = 0
end

puts (ww*hh).to_f/2
puts flag
