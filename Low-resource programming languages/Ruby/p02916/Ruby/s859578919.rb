# 高橋くんは N種類の料理が食べ放題のビュッフェに行き、全種類の料理 (料理 1, 料理 2, …, 料理 N) を 1度ずつ食べました。
# 高橋くんが i (1≤i≤N) 番目に食べた料理は料理 Ai でした。
# 高橋くんは、料理 i (1≤i≤N) を食べると満足度Bi を得ます。

# また、料理 i(1≤i≤N−1) を食べた直後に料理 i+1 を食べると満足度 Ci を追加で得ます。
# 高橋くんが得た満足度の合計を求めてください。
N=gets.to_i
A= gets.split.map(&:to_i)
B= gets.split.map(&:to_i)
C= gets.split.map(&:to_i)
feel=0
for i in 0..N-1 do
  if ((A[i]+1)==A[i+1]) then
    feel=feel+C[A[i]-1]
  end
  feel=feel+B[A[i]-1]
end
puts (feel)