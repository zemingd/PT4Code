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

aa = inputs[0][0].to_i
bb = inputs[0][1].to_i
str = inputs[1][0]

# body
if $debugFlag
  p aa
  p str
end

substr = ""
conda = (str[aa] == "-")
substr = str[0..aa-1] + str[aa+1..-1]

pd substr

if substr =~ /[0-9]+/ and substr.length == (aa + bb) and conda
  puts "Yes"
else
  puts "No"
end
