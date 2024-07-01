def gcd(a, b)
  a, b = b, a if a < b
  r = a % b
  while !r.zero?
    a = b
    b = r
    r = a % b
  end
  b
end

n = gets.to_i
arr = gets.split.map(&:to_i)
a = arr.shift
arr.each { |b| a = gcd(a, b) }

puts a
