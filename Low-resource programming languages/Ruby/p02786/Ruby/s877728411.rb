hp=gets.to_i
answer=0
monster=1

loop {
  answer+=monster
  
  if hp==1
      break
  end
  hp=hp/2  
  monster=monster*2
  
}

puts answer