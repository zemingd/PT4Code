A,B,C,D = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数

A.freeze
B.freeze
C.freeze
D.freeze

wk1 = A	#高橋君
wk2 = C #青木君

loop do
  wk2 = wk2 - B
  if wk1 <= 0 || wk2 <= 0 then
    break
  end
  wk1 = wk1 - D
  if wk1 <= 0 || wk2 <= 0 then
    break
  end
end
    
if wk1 > 0 then
  puts("Yes")
else
  puts("No")
end