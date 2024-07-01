# util functions

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

def pd(str)
  p str if $debugFlag
end

def putsd(str)
  puts str if $debugFlag
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

nn = inputs[0][0]

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
end


# def find6(n)
#   ret = 1
#   while n >= ret*6
#     ret *= 6
#   end
#   return ret
# end

# def find9(n)
#   ret = 1
#   while n >= ret*9
#     ret *= 9
#   end
#   return ret
# end

$arr6 = []
7.times do |i|
  $arr6 << 6**i
end
$arr6.reverse!

def find6(n)
  $arr6.size.times do |i|
    return $arr6[i] if n >= $arr6[i]
  end
end

$arr9 = []
6.times do |i|
  $arr9 << 9**i
end
$arr9.reverse!
def find9(n)
  $arr9.size.times do |i|
    return $arr9[i] if n >= $arr9[i]
  end
end

# $hh = {}
# def rec(n, d)
#   return d if n == 0
#   return $hh["#{n},#{d}"] if $hh["#{n},#{d}"] != nil
  
#   n6 = find6(n)
#   n9 = find9(n)

#   $hh["#{n},#{d}"] = [rec(n - n6, d + 1), rec(n - n9, d + 1)].min 
#   return $hh["#{n},#{d}"]
# end

def rec(n)
  return n if n <= 6
  
  n6 = find6(n)
  n9 = find9(n)

  return [rec(n - n6) + 1, rec(n - n9) + 1].min
end

#puts rec(nn, 0)
puts rec(nn)
