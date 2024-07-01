input_color = gets.split(' ').map{ |d| d.chomp}
input_count = gets.split(' ').map{ |d| d.to_i}
delete_color = gets.chomp
obj = Hash.new()
input_color.each_with_index do |el, idx|
  obj[el] = input_count[idx]
end
obj[delete_color] = obj[delete_color] - 1
puts "#{obj[input_color[0]]} #{obj[input_color[1]]}"