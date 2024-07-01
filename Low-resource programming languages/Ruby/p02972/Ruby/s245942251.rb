N = gets.to_i
A = gets.split.map(&:to_i)

# memoに
#memo = Array.new(N+1){ 0 }
ans  = []

N.downto(1) do | i |
  hop = 1
  cnt = 0
  # ボールが入っている箱を数え, cntに加算.
  # e.g. i=3なら3, 6, 9...の箱を調べる.
  while hop * i <= N
    cnt += 1 if ans.include?(hop * i - 1)
    hop += 1
  end
  #
  if cnt % 2 != A[i - 1]
    ans << i
  end
end
puts ans.size
puts ans.join(' ') if ans.size != 0