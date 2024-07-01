N=gets.to_i
S=gets.chomp.codepoints
mark=""
cnt=0
S.each do |e|
  next if mark==e
  if mark!=e
    mark=e
    cnt+=1
  end
end
puts cnt  
