S = gets
limit = S.length

i = 0
ABCcount = 0
while i > limit
S[i..(i+2)].to_s = "ABC"
ABCcount += 1
i += 1
end

puts ABCcount