x, n = gets.split.map(&:to_i)
arr = gets
p x and return if n == 0

unless arr.index(x)
  p x
  return
end

a = x + 1
b = x - 1
while true
  p b and return if arr.index(b).nil?
  p a and return if arr.index(a).nil?

  a += 1
  b -= 1
end
