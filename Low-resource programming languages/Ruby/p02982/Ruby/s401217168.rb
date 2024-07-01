include Math
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
arr = []
lc = 0
nn = 0
dd = 0
while l = $stdin.gets do
  if lc == 0
    tmp = l.chomp.split(" ").map(&:to_i)
    nn = tmp[0]
    dd = tmp[1]
  else
    arr << l.chomp.split(" ").map(&:to_i)
  end
  lc += 1
end

# input check

# body
if $debugFlag
  p nn
  p dd
  p arr
end

cnt = 0
for i in 0..nn-2
  for j in i+1..nn-1

    sum = 0
    for k in 0..dd-1
      sum += (arr[i][k] - arr[j][k])*(arr[i][k] - arr[j][k])
    end
    sqrtSum = sqrt(sum)
    pd sqrtSum
    if sqrtSum.ceil == sqrtSum.floor
      cnt += 1
    end
    
  end
end


puts cnt
