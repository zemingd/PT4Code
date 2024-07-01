#文字列比較はそのままできる
#(ex)"a" < "b" をif文で比較したらtrue.
N,L = gets.chomp.split(" ").map(&:to_i)
S = []
ans = ""
for i in 0..N-1 do
    S.push(gets.chomp.to_s)
end
S.sort! #比較のために整列
for i in 0..N-1 do
    ans = ans + S[i]
end
puts ans