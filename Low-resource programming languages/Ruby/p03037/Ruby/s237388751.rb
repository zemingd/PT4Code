# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

def pd(str)
  p str if $debugFlag
end

# input
input = []
lc = 0
ll = 1
rr = nil
while l = $stdin.gets do
  input = l.chomp.split(" ").map(&:to_i)
  if lc == 0
    rr = input[0]
  else
    ll = input[0] if input[0] > ll
    rr = input[1] if input[1] < rr
  end
  lc += 1
end

if  rr >= ll
  puts rr - ll + 1
else
  puts 0
end
