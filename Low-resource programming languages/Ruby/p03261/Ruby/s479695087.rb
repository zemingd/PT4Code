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
lc = 0
arr = []
nn = 0
while l = $stdin.gets do
  if lc == 0
    nn = l.chomp.to_i
  else
    arr << l.chomp
  end
  lc += 1
end

kishu = []
arr.length.times do |i|
  kishu << arr[i]
  next if i == 0
  if arr[i-1][-1] != arr[i][0] or kishu.include?(arr[i])
    puts "No"
    exit
  end
end

puts "Yes"


