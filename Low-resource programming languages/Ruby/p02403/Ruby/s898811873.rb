while 1 do
a,b=gets.split.map(&:to_i)
if a!=0 || b!=0 then
for a in 1..a do
for b in 1..b do
print"#"
end
print "\n"
end
else break
end
end