str = gets.chomp
mms = ["01","02","03","04","05","06","07","08","09","10","11","12"]
yys = []
100.times do |i|
	yys.push(i)
end
aa = str[0..1]
bb = str[2..3]
am = mms.include?(aa)
bm = mms.include?(bb)
ay = yys.include?(aa.to_i)
by = yys.include?(bb.to_i)

if am && bm && ay && by
	puts("AMBIGUOUS")
elsif (am && by)
	puts("MMYY")
elsif (ay && bm)
	puts("YYMM")
else
	puts("NA")
end