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

mons = inputs[1]
wars = inputs[2]

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
  p mons
  p wars
end

sum = 0
rem = mons[-1]
for i in 0..wars.size-1
  ii = wars.size-1-i
  sum += [rem + mons[ii], wars[ii]].min
  if rem > wars[ii]
    rem = mons[ii]
  else
    rem = [rem + mons[ii] - wars[ii], 0].max
  end
  #pd "rem=#{rem}"
end

puts sum
