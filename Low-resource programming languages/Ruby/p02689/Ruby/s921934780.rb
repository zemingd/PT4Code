all = 0
num = gets.chomp.split.map!(&:to_i)
high = gets.chomp.split.map!(&:to_i)
way = [0,0]
array = Array.new(num[0]).map{Array.new(num[0],0)}

for i in 1..num[1] do
  way = gets.chomp.split.map!(&:to_i)
  array[way[0]-1][way[1]-1] = high[way[1]-1]
  array[way[1]-1][way[0]-1] = high[way[0]-1]
end

for i in 0..num[0]-1 do
  array[k][k] = high[k]
  dekai = array[k].max
  if array[k][k] == dekai && array[k].count(dekai) == 1 then
    all += 1
  end
end
puts all