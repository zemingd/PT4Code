# debug
debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if debugFlag

# util functions
def myabs( x )
  if x > 0
    return x
  else
    return -x
  end
end

def my_search( t, blist, resnum )
  costs = []
  vals = []

  if resnum == blist.size
    blist.size.times do |i|
      costs << [blist[i], 2**i]
      vals << myabs(blist[i] - t)
    end
  else
    (2**blist.size).times do |i|
      next if i == 0
         
      tmp_bamb = 0
      tmp_cmps = 0    
      blist.size.times do |j|
        tmp_bamb += blist[j]*i[j]
        tmp_cmps += i[j]
      end
      costs << [tmp_bamb, i]
      vals << (myabs( tmp_bamb - t ) + (tmp_cmps - 1)*10)
    end
  end
  mp = vals.min
  c = costs[vals.index(vals.min)]

  blist.size.times do |j|
    blist[j] = nil if c[1][j] == 1
  end
  blist.compact!

  return mp
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
if debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

# body
target_list = []
blist       = []
inputs.size.times do |i|
  if i == 0
    target_list = inputs[i][1..-1]
  else
    blist << inputs[i][0]
  end
end

if debugFlag
  p target_list
  p blist
end

mps = []
blistc = blist.clone
p "pat0" if debugFlag
mp = 0
mp += my_search( target_list[0], blistc, 3 )
mp += my_search( target_list[1], blistc, 2 )
mp += my_search( target_list[2], blistc, 1 )
mps << mp

blistc = blist.clone
p "pat1" if debugFlag
mp = 0
mp += my_search( target_list[0], blistc, 3 )
mp += my_search( target_list[2], blistc, 2 )
mp += my_search( target_list[1], blistc, 1 )
mps << mp

blistc = blist.clone
p "pat2" if debugFlag
mp = 0
mp += my_search( target_list[1], blistc, 3 )
mp += my_search( target_list[0], blistc, 2 )
mp += my_search( target_list[2], blistc, 1 )
mps << mp

blistc = blist.clone
p "pat3" if debugFlag
mp = 0
mp += my_search( target_list[1], blistc, 3 )
mp += my_search( target_list[2], blistc, 2 )
mp += my_search( target_list[0], blistc, 1 )
mps << mp

blistc = blist.clone
p "pat4" if debugFlag
mp = 0
mp += my_search( target_list[2], blistc, 3 )
mp += my_search( target_list[0], blistc, 2 )
mp += my_search( target_list[1], blistc, 1 )
mps << mp

blistc = blist.clone
p "pat5" if debugFlag
mp = 0
mp += my_search( target_list[2], blistc, 3 )
mp += my_search( target_list[1], blistc, 2 )
mp += my_search( target_list[0], blistc, 1 )
mps << mp

p mps if debugFlag
puts mps.min
