a,b=gets.split.map(&:to_i)
as=a.to_s
bs=b.to_s
ass=as*b
bss=bs*a
ass=ass.to_i
bss=bss.to_i

puts ass>=bss ? ass:bss