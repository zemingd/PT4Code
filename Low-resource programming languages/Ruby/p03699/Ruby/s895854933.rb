N = gets.to_i
SS = readlines.map(&:to_i)
ans = 0
nn = 2**N - 1
nn.downto(1) do |i|
  tmp = []
  i.to_s(2).reverse.chars.each_with_index do |c, i|
    tmp << SS[i] if c == '1'
  end
  result = tmp.inject(:+)
  if result % 10 != 0
    p(result)
    exit
  end
end
p(ans)