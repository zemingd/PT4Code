S=gets
for i in 0..S.length do
    if S[i]==',' then
        S[i]=" "
    end
end
puts(S)
