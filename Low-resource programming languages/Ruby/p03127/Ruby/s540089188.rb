n = gets.to_i
as = gets.split.map(&:to_i)

def gcd(a,b)
  return a.abs if b == 0
  gcd(b, a%b)
end

def gcds(arr)
  ans = arr[0]
  (1..arr.size-1).each do |i|
    ans = gcd(ans, arr[i])
  end
  ans
end

puts gcds(as)