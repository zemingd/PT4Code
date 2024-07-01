n=gets.to_i
d=gets.split
loop do
  j=true
  l=n.to_s.length
  l.times do |i|
    if d.include?(n.to_s[l-1-i])
      n+=1
      j=false
      break
    end
  end
  break if j
end
p n