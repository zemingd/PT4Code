x, y = gets.split.map(&:to_i)
numbers = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
numbers.each do |n|
  if n.include?(x) && n.include?(y)
    puts "Yes"
    exit
  end
end
puts "No"