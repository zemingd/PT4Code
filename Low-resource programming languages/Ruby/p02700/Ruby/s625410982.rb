tHP,tAttack,aHP,aAttack=gets.split.map(&:to_i)
loop do
  aHP -= tAttack
  if aHP <= 0
    puts "Yes"
    break
  end
  tHP -= aAttack
  if tHP <= 0
    puts "No"
    break
  end
end