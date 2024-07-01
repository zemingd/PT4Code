def dice(n, k ,dices)
  expects = 0
  count = 0
  max = 0
  
  while count <= n - k do
    sum = dices[0..k-1].inject(:+)
    if sum > max
      max = sum
      dices_max = dices[0..k-1]
    end
    dices.shift
    count = count + 1
  end
  dices_max.each do |num|
    expects += ((1 + num)/2.to_f)
  end
  puts expects
end
 
n, k = gets.chomp.split(" ").map(&:to_i)
dices = gets.chomp.split(" ").map(&:to_i)
dice(n, k ,dices)