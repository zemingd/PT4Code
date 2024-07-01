N = gets.to_i
A = [nil] + gets.split.map(&:to_i)
B = [nil] + Array.new(N, 0)

N.downto(1) do |idx|
  sum = 0
  idx.step(N,idx).each{|i| sum += A[i] }
  B[idx] = sum % 2
end

ans = (1..N).select{|i| B[i] == 1 }
puts ans.count, ans*' '
