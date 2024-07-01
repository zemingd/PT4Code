g = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
x,y = gets.split.map(&:to_i)

g.each do |gr|
  if gr.include?(x) && gr.include?(y)
    puts "Yes"
    exit
  end
end
puts "No"