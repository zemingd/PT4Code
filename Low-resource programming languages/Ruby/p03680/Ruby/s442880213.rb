n=gets.to_i
as=(1..n).map{gets.to_i}
states=[as[0]]
i=1
loop do
  state=as[states[-1]-1]
  break if states.include?(2) || states.include?(state)
  i+=1
end
puts states.include?(2) ? states.index(2)+1 : -1