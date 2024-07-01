arr = 3.times.map { gets.split.map(&:to_i) }
n = gets.to_i
nums = n.times.map{ gets.to_i }
arr.each do |row|
  if row.all?{|v| nums.include?(v) }
    puts 'Yes'
    exit
  end
end
arr.transpose.each do |column|
  if column.all?{|v| nums.include?(v) }
    puts 'Yes'
    exit
  end
end
result = []
arr.each_with_index do |row, y|
  row.each_with_index do |ele, x|
    result << ele if y == x
  end
end
if result.all?{|v| nums.include?(v) }
  puts 'Yes'
  exit
end
puts 'No'