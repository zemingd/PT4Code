N=gets.to_i
aNs=gets.chomp.split.map(&:to_i)
bNs=gets.chomp.split.map(&:to_i)
sum = 0
N.times do |index|
  tempA = aNs[index]+aNs[index+1]
  diffTemp = tempA - bNs[index]
  if diffTemp == 0
    sum += bNs[index]
    aNs[index+1] = 0
  elsif diffTemp > 0
    sum += bNs[index] 
    aNs[index+1] = [diffTemp,aNs[index+1]].min 
  elsif diffTemp < 0
    sum += tempA
    aNs[index+1] = 0
  end
end
puts sum