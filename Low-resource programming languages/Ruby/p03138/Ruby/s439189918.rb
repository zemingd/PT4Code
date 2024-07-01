n, k = gets.split.map(&:to_i)
$as = gets.split.map(&:to_i)

def f(x)
  ret = 0
  $as.each do |a|
    ret += x^a
  end
  ret
end

target = 0
k.downto(0) do |i|
  if i % 4 == 0
    target = i
    break
  end
end

puts f(target)
