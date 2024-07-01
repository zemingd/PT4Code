line = readlines.map(&:chomp)
array = Array.new(5)
min = 1000
idx = 0
#要素付きの配列をつくるときはeach_with_indexメソッドを使う
line.each_with_index do |num, i|
  #array[i] = num.to_i % 10 ** #
  array[i] = num.to_i
  if array[i] >= 10 then

    d = Math.log10(array[i]).to_i;
    while array[i] > 10
      array[i] %= 10 ** d
      d -= 1
    end
  end
  if array[i] != 0 && min > array[i] then
    min = array[i]
    idx = i
  end
end

sum = 0
array.each_with_index do |num,i|
  if idx != i then
    if array[i] != 0 then
      sum += (line[i].to_i/10+1) * 10
    else
      sum += line[i].to_i
    end
  end
end
sum += line[idx].to_i
puts sum