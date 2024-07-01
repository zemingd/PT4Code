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
  if lc == 1
    inputs << l.chomp.split(" ").map(&:to_s)
  else
    inputs << l.chomp.split(" ").map(&:to_i)
  end
  lc += 1
end

aa = inputs[0][0]
bb = inputs[0][1]
str = inputs[1][0]

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
  p aa
  p bb
  p str
end

stra = str[0..aa-1]
strb = str[aa+1..-1]

pd stra
pd strb

if stra =~ /[0-9]+/ and strb =~ /[0-9]+/ and str[aa] == '-' and str.length == (aa + bb + 1)
  puts "Yes"
else
  puts "No"
end
