groupa = [1,3,5,7,8,10,12]
groupb = [4,6,9,11]
groupc = [2]

inputs = gets.split(' ')

x = inputs[0].to_i
y = inputs[1].to_i
if (groupa.include?(x) and groupa.include?(y)) or (groupb.include?(x) and groupb.include?(y)) or (groupc.include?(x) and groupc.include?(y))
  puts 'Yes'
else
  puts 'No'
end
