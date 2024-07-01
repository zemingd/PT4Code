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

n = inputs[0][0]
m = inputs[0][1]

checkarr = inputs[1..-1]

mat = []
checkarr.each do |cd_i|
  c_i = cd_i[1..-1]
  vec_i = [0]*m
  c_i.each do |c_ij|
    vec_i[c_ij-1] = 1
  end
  mat << vec_i
end

if debugFlag
  p "n = #{n}"
  p "m = #{m}"
  mat.each do |m_i|
    p m_i
  end
end

resCnt = 0
m.times do |i|
  failFlag = false
  n.times do |j|
    if mat[j][i] == 0
      failFlag = true
      break
    end
  end
  resCnt += 1 if failFlag == false
end
puts resCnt