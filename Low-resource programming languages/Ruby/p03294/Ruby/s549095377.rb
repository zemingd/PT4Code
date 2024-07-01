N = gets.to_i
$as = gets.split.map(&:to_i)

def f(m)
  ret = 0
  for i in 0..(N - 1) do
    a = $as[i]
    ret += m % a
  end
  ret
end

target = 1
$as.each do |a|
  target = target.lcm(a)
end

puts f(target - 1)