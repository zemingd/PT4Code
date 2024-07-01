def vertical_roll(_new_dice, _upper_value)
  _count = 0
  while _new_dice[0] != _upper_value && _count < 4
    _new_dice[0], _new_dice[1], _new_dice[4], _new_dice[5] = _new_dice[1], _new_dice[5], _new_dice[0], _new_dice[4]
  end
  _new_dice
end

def horizontal_roll(_new_dice, _front_value)
  _count = 0
  while _new_dice[1] != _front_value && _count < 4
    _new_dice[1], _new_dice[2], _new_dice[4], _new_dice[3] = _new_dice[2], _new_dice[4], _new_dice[3], _new_dice[1]
    _count += 1
  end
  _new_dice
end

def same_judge(_dice_a, _dice_b)
  if _dice_a == _dice_b
    puts "No"
    exit
  end
end

n = gets(chomp:true).to_i

_dice_a = gets.split.map(&:to_i)
_dice_table = [].push(_dice_a.join.to_i)

(n-1).times do
  _dice_b = gets.split.map(&:to_i)

  same_judge(_dice_a, _dice_b)

  _dice_b_idx = _dice_b.index(_dice_a[0])

  case _dice_b_idx
  when 0, 1, 5, 4
    vertical_roll(_dice_b, _dice_a[0])
    horizontal_roll(_dice_b, _dice_a[1])
  else
    horizontal_roll(_dice_b, _dice_a[0])
    vertical_roll(_dice_b, _dice_a[0])
    horizontal_roll(_dice_b, _dice_a[1])
  end
  
  same_judge(_dice_a, _dice_b)

  _dice_table << _dice_b.join.to_i
  _dice_a = _dice_b
end

if _dice_table.size == _dice_table.uniq.size
  puts "Yes"
else
  puts "No"
end

