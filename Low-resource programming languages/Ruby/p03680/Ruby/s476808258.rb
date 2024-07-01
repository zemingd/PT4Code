n=gets.to_i
as=(1..n).map{gets.to_i}
states=[as[0]]
i=1
loop do
  if states.include?(2)
    puts i
    exit
  else
    state=as[states[-1]-1]
    if states.include?(state)
      puts -1
      exit
    end
    states<<state
    i+=1
  end
end