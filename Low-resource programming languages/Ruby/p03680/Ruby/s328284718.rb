n=gets.to_i
as=(1..n).map{gets.to_i}
states=[as[0]]
n.times do |i|
  if states.include?(2)
    puts i+1
    exit
  else
    state=as[states[-1]-1]
    if states.include?(state)
      puts -1
      exit
    end
    states<<state
  end
end