s=gets.chomp
cnt=0
s.chars.each_with_index do |x, i|
  if i.even?
    cnt+=1 if x.to_i==0
  else
    cnt+=1 if x.to_i==1
  end
end
puts [s.length-cnt,cnt].min
