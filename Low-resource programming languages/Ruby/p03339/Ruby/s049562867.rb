N = gets.to_i
S = gets.chomp.chars

lc = Array.new(N, 0)
rc = Array.new(N, 0)

c = 0
S.each_with_index do |s, i|
  if s == 'W'
    c += 1
  end
  lc[i] += c
end

c = 0
(S.size-1).downto(0) do |i|
  s = S[i]
  if s == 'E'
    c += 1
  end
  rc[i] += c
end

ans = 10 ** 20
(0..S.size-1).each do |i|
  ans = [ans, lc[i] + rc[i]].min
end
puts ans - 1