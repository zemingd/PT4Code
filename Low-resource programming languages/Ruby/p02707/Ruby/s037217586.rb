#countはループを含むためO(N**2)となる、O(N)ならOK
N = gets.to_i
ary = gets.strip.split.map(&:to_i)
rec = Array.new(N,0)
i = 0
while i < N-1 do
  rec[ary[i]-1] += 1
  i += 1
end
puts rec