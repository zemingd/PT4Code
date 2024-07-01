str=gets.chomp.split('')
ary=['A','C','G','T']
cnt=0
ans=0
str.each do |s|
  flg=false
  if ary.include?(s)
    cnt+=1
    ans=cnt if ans<=cnt
    flg=true
  end
  cnt=0 unless flg
end
puts ans