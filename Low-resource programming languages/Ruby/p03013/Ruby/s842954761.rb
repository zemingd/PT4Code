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
nn = 0
as = []
bef = 0
end_flag = false
while l = $stdin.gets do
  if lc == 0
    nn = l.chomp.split(" ").map(&:to_i)[0]
  else
    xx = l.chomp.split(" ").map(&:to_i)[0]
    if xx - bef == 1 and bef != 0
      end_flag = true
      break
    end
    as << xx
    bef = xx
  end
  lc += 1
end

if end_flag
  puts 0
  exit
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
  p nn
  p as
end

as << (nn + 1)

lst = []
tmp = 0
as.length.times do |i|
  if i == 0
    lst << as[i] - 1
  else
    lst << as[i] - tmp - 2
  end
  tmp = as[i]
end

pd lst

def comb(n, m)
  return 1 if n == 0 or m == 0
  
  ret = 1
  div = 1
  m.times do |i|
    ret *= (n - i)
    div *= (i + 1)
  end
  return ret/div
end

combs = 1
cur_comval = nil
lst.each do |l_i|
  ynum = l_i/2
  tmp_comb = 0
  (ynum+1).times do |k|
    n = l_i - k
    if k == 0 or n - 1 <= 0
      cur_comval = comb(n, k)
    else
      cur_comval = cur_comval * (n - k + 2) * (n - k + 1) / (n + 1) / k
    end
    tmp_comb += cur_comval
  end
  combs *= tmp_comb
end

puts (combs % 1000000007)