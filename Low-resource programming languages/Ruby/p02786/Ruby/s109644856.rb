$m = {}

def f(n)
  return 0 if n == 0
  return 1 if n == 1
  return $m[n] if $m.key?(n)
  $m[n] = f(n/2) * 2 + 1
end

h = gets.chomp.to_i
puts f(h)
