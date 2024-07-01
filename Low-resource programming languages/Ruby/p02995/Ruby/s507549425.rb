a,b,c,d = gets.chomp.split(" ").map(&:to_i)

cnum = b/c - a/c
if a%c == 0
    cnum += 1
end

dnum = b/d - a/d
if a%d == 0
    dnum += 1
end

cd = c.lcm(d)
cdnum = b/cd - a/cd
if a%cd == 0
    cdnum += 1
end

abnum = b-a+1

puts abnum-cnum-dnum+cdnum
