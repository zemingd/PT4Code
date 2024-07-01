x=gets.to_i
while true
  check=true
  (1..Math.sqrt(x).floor).each do |i|
    if i>1 && x%i==0
      check=false
      break
    end
  end
  break if check
  x+=1
end
puts x
