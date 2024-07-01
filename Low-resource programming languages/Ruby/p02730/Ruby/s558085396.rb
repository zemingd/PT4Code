s = gets.chomp.split("").map(&:to_s);
sl=s.length

ans = "Yes"


ck1 = s.slice(0..(sl/2)-1)
ck2 = s.slice(((sl/2)+1)..sl-1).reverse

if (ck1!=ck2) then
	ans = "No"
end

#check2
s2 = s.slice(0..(sl/2)-1)
s2l=s2.length

if s2l%2==0 then
	ck3 = s2.slice(0..(s2l/2))
	ck4 = s2.reverse.slice(0..(s2l/2))
	if ck3 != ck4 then
		ans ="No"
	end

else
	ck3 = s2.slice(0..(s2l/2)-1)
	ck4 = s2.revers.slice(0..(s2l/2)-1)
	if ck3 != ck4 then
		ans ="No"
	end
end

puts ans
