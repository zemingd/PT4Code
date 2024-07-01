lst=gets.to_s.split("")
N=lst.length
mini=1000
for i in 0..N-1 do
  lst[i]=lst[i].to_i
end
for i in 1..N-2 do
  mini=[mini,(lst[i-1]*100+lst[i]*10+lst[i+1]-753).abs].min
end
print mini  