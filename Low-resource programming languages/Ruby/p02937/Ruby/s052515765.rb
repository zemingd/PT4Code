S = gets.chomp
T = gets.chomp

ans = -1
if T.chars.uniq.all? {|c| S.include?(c) }
  A = [S.index(T[0])+1]
  1.step(T.size-1) do |i|
    A[i] = S.index(T[i]) + 1
    A[i] += S.size while A[i] < A[i-1]
  end
  ans = A.last
end
puts ans