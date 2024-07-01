N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
cnt = 0

(N - 1).downto(0) do |i|
  k = i + 1

  # 次の街のモンスターが残る or ちょうど倒す
  if A[k] >= B[i]
    cnt += B[i]
    A[k] -= B[i]
    next
  end

  # 勇者が倒せる数を調整しておく
  B[i] -= A[k]

  # 次の街のモンスターを倒しきったことにする
  cnt += A[k]
  A[k] = 0

  # 今の街のモンスターが残る or ちょうど倒す
  if A[i] >= B[i]
    cnt += B[i]
    A[i] -= B[i]
    next
  end

  # 今の街のモンスターを倒し切ったことにする
  cnt += A[i]
  A[i] = 0
end

puts cnt