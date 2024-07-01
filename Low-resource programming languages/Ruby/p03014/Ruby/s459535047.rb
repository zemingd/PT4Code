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
  if lc != 0
    inputs << l.chomp
  else
    tmp = l.chomp.split(" ").map(&:to_i).clone
    hh = tmp[0]
    ww = tmp[1]
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
  p hh
  p ww
end

ys = []
xs = []
zs = []
hh.times do
  xs << [0]*ww
  ys << [0]*ww
  zs << [0]*ww
end

lp = 0
rp = 0
for i in 0..hh-1 do
  for j in 0..ww-1 do
    next if xs[i][j] > 0
    if inputs[i][j] != '#'
      lp = j
      rp = j
      while rp < ww and inputs[i][rp] != '#' do
        rp += 1
      end

      pd "lp=#{lp}, rp=#{rp}, i=#{i}, j=#{j}"
      for k in j..rp-1
        xs[i][k] = rp - lp
      end
      
    end
  end
end

# xs.each do |x_i|
#   pd x_i
# end

up = 0
dp = 0
for j in 0..ww-1 do
  for i in 0..hh-1 do
    next if ys[i][j] > 0
    if inputs[i][j] != '#'
      up = i
      dp = i
      while dp < hh and inputs[dp][j] != '#' do
        dp += 1
      end
      
      pd "up=#{up}, dp=#{dp}, i=#{i}, j=#{j}"
      for k in i..dp-1
        ys[k][j] = dp - up
        zs[k][j] = ys[k][j] + xs[k][j]
      end
      
    end
  end
end

# ys.each do |y_i|
#   pd y_i
# end

#pd ""

cands = []
zs.each do |z_i|
  #pd z_i
  cands << z_i.max
end

puts cands.max - 1

