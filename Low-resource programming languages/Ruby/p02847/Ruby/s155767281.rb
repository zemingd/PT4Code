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
if $debugFlag
end

str = inputs[0][0]
ans = ""
if str == "SUN"
  ans = 7
elsif str == "MON"
  ans = 6
elsif str == "TUE"
    ans = 5
elsif str == "WED"
    ans = 4
elsif str == "THU"
    ans = 3
elsif str == "FRI"
    ans = 2
elsif str == "SAT"
  ans = 1
end

puts ans
