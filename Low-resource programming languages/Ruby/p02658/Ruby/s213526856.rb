n=gets
tmp=1

for i in 1..n do
  nk=gets
  tmp=tmp*gets

  if tmp>1000000000000000000 then
    print(-1)
    return 0
  end
end

print(tmp)
return 0
