def calc n, x
  return 0 if x < 0
  if n == 1
    return (0..9).include?(x) ? 1 : 0
  end
  (0..9).to_a.inject(0){|result, mem| result += calc(n-1, x-mem)}
end

while input = gets do
  puts calc(4, input.to_i)
end