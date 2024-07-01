n=gets.to_i
pn=gets.split.map(&:to_i)
count = 0
(n-2).times do |index|
  localPn = pn[index..(index+2)]
  count += 1 if localPn[0] < localPn[1] && localPn[1] < localPn[2]
  count += 1 if localPn[0] > localPn[1] && localPn[1] > localPn[2] 
end
puts count