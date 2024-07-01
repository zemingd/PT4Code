n = gets.to_i
a = Array.new(n){gets.split.map(&:to_i)}.sort_by{|x, y| y}
sum = 0
a.each do |x, y|
  sum += x
  if sum > y
    puts 'No'
    exit
  end
end
puts 'Yes'