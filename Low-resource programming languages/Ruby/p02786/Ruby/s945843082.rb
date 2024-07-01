H = gets.chomp.to_i
mhp = H

def kickTheMonster(mhp)
  hit=0
  if mhp == 1
    hit += 1
  else
    hit += 1
    new_mhp = mhp / 2
    hit += (kickTheMonster(new_mhp) *2)
  end
  return hit
end

puts kickTheMonster(mhp)
