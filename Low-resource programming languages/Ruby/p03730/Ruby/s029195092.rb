a,b,c=gets.split.map(&:to_i)
as=[]; flg=true; i=1
while flg do
  k=(a*i)%b
  if as.include?(k)
    flg=false
  else
    as<<k
  end
  i+=1
end
puts as.include?(c) ? 'YES':'NO'