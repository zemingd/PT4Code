lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

len = lines[1].sort.reverse

ans = 0
for i in 1..N-2 do
  for j in (i+1)..N-1 do
    k = len.bsearch_index{|x| x < len[-i] + len[-j]}
    if k == nil or N-j <= k then
      tmp = 0
    else
      tmp = N - j - k
    end
    ans += tmp
  end
end
puts ans