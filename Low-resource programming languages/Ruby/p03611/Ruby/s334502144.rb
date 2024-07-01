def max(a,b); a > b ? a : b; end

N = gets.to_i
C = Array.new(10 ** 5, 0)

gets.split.map(&:to_i).each do |v|
  C[v] += 1
end
ans = (1 .. C.size - 2).inject(0) do |m,i|
  max(m, C[i-1] + C[i] + C[i + 1])
end
puts ans
