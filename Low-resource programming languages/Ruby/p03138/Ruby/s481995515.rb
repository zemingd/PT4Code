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
if k < 4
  ans = 0
  for i in 0..k do
    v = f(i)
    ans = v if v > ans
  end
  puts ans
else
  k.downto(0) do |i|
    if i % 4 == 0
      target = i
      break
    end
  end
  # if target == 0
  #   target = k
  # end
  puts f(target)
end


