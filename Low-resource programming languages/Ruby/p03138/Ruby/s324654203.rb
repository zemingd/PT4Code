n, k = gets.split.map(&:to_i)
$as = gets.split.map(&:to_i)

def f(x)
  ret = 0
  $as.each do |a|
    ret += x^a
  end
  ret
end

ans = 0

for i in 0..k do
  v = f(i)
  ans = v if v > ans
end

puts ans