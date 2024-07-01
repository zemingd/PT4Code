def find_posmin(arr)
  m = arr.max
  arr.each do |e_i|
    m = e_i if e_i > 0 and m > e_i
  end
  return m
end

# debug
debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if debugFlag

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
if debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

# body
crntArr = inputs[1]
if debugFlag
  p crntArr
end

m = 0
loop do
  m = find_posmin( crntArr )
  midx = crntArr.index(m)
  stopFlag = true
  crntArr.size.times do |i|
    next if midx == i
    crntArr[i] = crntArr[i] % m
    stopFlag = false if crntArr[i] != 0
  end
  break if stopFlag
end

puts m
