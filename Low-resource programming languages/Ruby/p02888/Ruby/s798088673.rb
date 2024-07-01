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
lst = inputs[1]
lst.sort!

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
  p lst
end

ans = 0
for i in 0..nn-2
  for j in i+1..nn-1
    lft = lst.bsearch_index do |x|
      x > lst[j]
    end
    lft = nn if lft == nil
    rgt = lst.bsearch_index do |x|
      x >= lst[i] + lst[j]
    end
    rgt = nn if rgt == nil
    ans += rgt - lft
  end
end

puts ans
