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

as = inputs[1]

# body
if $debugFlag
  p as
end

lst = []

def calc(a)
  res = 0
  while a[0] != 1
    res += 1
    a /= 2
  end
  return res
end

as.each do |a_i|
  lst << calc(a_i)
end

puts lst.inject(:+)
