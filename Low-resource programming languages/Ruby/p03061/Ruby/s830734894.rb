def gcd(arr) # arr: Array of non-negative integers
  if arr.size < 2
    raise "array (#{arr}) size is less than 2."
  end

  min = 10**10
  minidx = 0
  arr.size.times do |i|
    if arr[i] < min
      min = arr[i]
      minidx = i
    end
  end
  
  contFlag = true
  while contFlag
    contFlag = false
    for i in 0..arr.size - 1 do
      if i != minidx and arr[i] != 0
        mod = arr[i] % min
        contFlag = true if mod != 0
        arr[i] = mod
        if mod < min and mod != 0
          min = mod
          minidx = i
        end
      end
    end
  end
  
  return [min, minidx]
end

# debug
$debugFlag = ( ARGV[0] != nil )
p "==== DEBUG MODE ====" if $debugFlag

def pd(str)
  p str if $debugFlag
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
if $debugFlag
  p "--- INPUT (begin) ---"
  inputs.each do |l_i|
    p l_i
  end
  p "--- INPUT (end) ---"
  print "\n"
end

arr = inputs[1]

# body
if $debugFlag
  p arr
end

arr2 = arr.clone
ret = gcd(arr)
arr2.delete_at(ret[1])
puts gcd(arr2)[0]