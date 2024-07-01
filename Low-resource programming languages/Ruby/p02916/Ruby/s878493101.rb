N=gets.chomp.to_i
arrFood=[]
arrPoint=[]
arrBonus=[]

arrFood=gets.chomp.split.map(&:to_i)
arrPoint=gets.chomp.split.map(&:to_i)
arrBonus=gets.chomp.split.map(&:to_i)

basicSum = arrPoint.inject(:+)


bonusSum = 0
arrFood.each_with_index do |food, i|
  if (arrFood[i + 1].to_i - arrFood[i].to_i) == 1
    bonusSum += arrBonus[i-1]
  end
end

puts basicSum + bonusSum