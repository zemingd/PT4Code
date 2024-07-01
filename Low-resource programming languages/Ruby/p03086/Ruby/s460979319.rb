S = gets

test = ["A", "C", "G", "T"]

ret = 0
tmp = 0

for i in 0..S.length-1 do
    if test.include?(S[i]) then
        tmp += 1
        ret = [ret, tmp].max
    else
        tmp = 0
    end
end

puts ret