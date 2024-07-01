S=gets.chomp.split("")

ans=[]
cnt=0

S.each do |s|
  if s=="A" || s=="T" || s=="G" || s=="C"
    cnt += 1
  else
    ans.push(cnt)
    cnt=0
  end
end

p ans.max
