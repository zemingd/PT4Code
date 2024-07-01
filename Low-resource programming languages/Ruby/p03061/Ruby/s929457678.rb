$h = Hash.new

def gcd(arr)
  return arr[0] if arr.size == 1
  return $h[arr] if $h[arr]

  gcd = gcd2(arr[0], arr[1])
  $h[arr] = gcd
end

def gcd2(a, b)
  return a if b == 0
  gcd2(b, a % b)
end

def gcd_all(arr)
  return arr[0] if arr.size == 1
  return gcd(arr) if arr.size == 2

  gcd_all = gcd_all(arr.each_slice(2).map(&method(:gcd)))
end

n = gets.to_i
a = gets.split.map(&:to_i)

p 0.upto(n - 1).map { |i| a[0...i] + a[(i + 1)...n] }.map(&method(:gcd_all)).max