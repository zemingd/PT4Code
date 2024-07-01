all = 0
num = gets.chomp.split.map!(&:to_i)
high = gets.chomp.split.map!(&:to_i)

array = Array.new(num[0]).map{Array.new(num[0],0)}

(1..num[1]).each{ |j|
  way = gets.chomp.split.map!(&:to_i)
  array[way[0]-1][way[1]-1] = high[way[1]-1]
  array[way[1]-1][way[0]-1] = high[way[0]-1]
}

(0..num[0]-1).each{ |k|
  array[k][k] = high[k]
  dekai = array[k].max
  if array[k].index(dekai) == k && array[k].select { |num| num == dekai }.count == 1 then
    all += 1
  end
}
puts all