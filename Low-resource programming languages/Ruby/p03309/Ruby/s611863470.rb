_ = gets.to_i
$as = gets.split(" ").map(&:to_i)

def foo(b)
  sum = 0
  $as.each.with_index(1) do |a,i|
    sum += (a - (b+i)).abs
  end
  sum
end

max = $as.max
min = -max
$min = foo(min)
n = 0
used = []

negative = $min < foo(0)

while !used.include?(n)
  used << n
  result = foo(n)
  if $min < result
    n = n + (min - n)/2
  elsif negative
    $min = result
    n = n + (min - n)/2
  else
    $min = result
    n = n + (max - n)/2
  end
end

puts $min