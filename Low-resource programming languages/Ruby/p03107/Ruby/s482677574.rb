s=gets.chomp.split("").map &:to_i
ans=0
while true
  sa=0
  for i in 0..s.size-2
    next if s[i]==nil
    if s[i]+s[i+1]==1
      s[i]=nil
      s[i+1]=nil
      ans+=2
      sa=1
    end
  end
  break if sa==0
  s.compact!
end
puts ans
