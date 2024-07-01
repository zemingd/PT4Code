s=gets.chomp.split("").sort
t=gets.chomp.split("").sort.reverse
lexicographicalOrderFlag=true
alphbets=("a".."z").to_a
s.each_with_index do |value,index|
  tValue=t[index]
  if(value != tValue)
  	lexicographicalOrderFlag=false if alphbets.index(value) > alphbets.index(tValue)
    break
  end
  if s.length == index+1 && s.length >= t.length　|| t.length == index + 1
    lexicographicalOrderFlag=false 
  end
end
puts lexicographicalOrderFlag ? :Yes : :No