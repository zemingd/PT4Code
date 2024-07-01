N=gets.to_i
S={}
for i in 1..N do
    A=gets.to_i
    if !S.has_key?(A) then S[A]=1
    else S.delete(A) end
end
p S.size