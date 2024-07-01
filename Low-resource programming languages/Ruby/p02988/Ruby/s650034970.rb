n = gets.chop.to_i
array=[]
numbers = gets.strip.split.map(&:to_i)
(numbers.length-2).times do |i|
  if  numbers[i,3].sort.find_index(numbers[i+1])==1
    array << numbers[i+1]
  end
end
puts array.length