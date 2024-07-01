class Dice
  def dice_s(arr, i)
    arr[i][0],arr[i][1],arr[i][4],arr[i][5] = arr[i][4],arr[i][0],arr[i][5],arr[i][1]
    return arr[i]
  end
 
  def dice_e(arr, i)
    arr[i][0],arr[i][2],arr[i][3],arr[i][5] = arr[i][3],arr[i][0],arr[i][5],arr[i][2]
    return arr[i]
  end
 
  def dice_w(arr, i)
    arr[i][0],arr[i][2],arr[i][3],arr[i][5] = arr[i][2],arr[i][5],arr[i][0],arr[i][3]
    return arr[i]
  end
 
  def dice_n(arr, i)
    arr[i][0],arr[i][1],arr[i][4],arr[i][5] = arr[i][1],arr[i][5],arr[i][0],arr[i][4]
    return arr[i]
  end
 
  def dice_b(arr, i)
    arr[i][0],arr[i][1],arr[i][4],arr[i][5]  = arr[i][5],arr[i][4],arr[i][1],arr[i][0]
    return arr[i]
  end
 
  def dice_sp(arr, i)
    arr[i][1],arr[i][2],arr[i][4],arr[i][3] = arr[i][2],arr[i][4],arr[i][3],arr[i][1]
    return arr[i]
  end
end
 
n = gets.chomp.to_i
arr = Array.new(6){Array.new(n)}
arr[0] = gets.chomp.split.map(&:to_i)
count = 0
dice = Dice.new()
 
(1..n-1).each { |i|
  arr[i] = gets.chomp.split.map(&:to_i)
 
  case arr[0][0]
  when arr[i][4]; dice.dice_s(arr, i)
  when arr[i][3]; dice.dice_e(arr, i)
  when arr[i][2]; dice.dice_w(arr, i)
  when arr[i][1]; dice.dice_n(arr, i)
  when arr[i][5]; dice.dice_b(arr, i)
  end
 
  while arr[0][1] != arr[i][1]
    dice.dice_sp(arr, i)
  end
}

for j in 0..n-1
  for k in j+1..n-1
    arr[j] == arr[k] && count += 1
  end
end

puts count == 0 ? "Yes" : "No"