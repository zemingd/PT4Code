a, b = gets.split.map(&:to_i)

#f(0,a)を求める
def f(a)
  i = 0
  sum = 0
  #49桁分計算 ∵10**12 < 2**48
    while (i < 49) do
    cnt = 0
    #周期2**(i+1)→一応ビット演算しとく
    cycle = 1 << (i+1)
    #周期内の1の数を数える
    cnt += (a+1)/cycle * cycle/2
    #はみ出た分を足す
    rest = (a+1)%cycle - cycle/2
    cnt += rest if rest > 0
    if (cnt%2 == 1) then
      sum += 1 << i
    end
    i += 1
  end
  return sum
end
#f(a,b) = f(0,a-1)^f(0,b)
puts f(a-1)^f(b)