n = gets.to_i
array = []
n.times { array << gets.split.map(&:to_i) }
array.sort_by!{ |a, b| b }
current_time = 0
array.each do |a, b|
  current_time += a
  if current_time > b
    puts "No"
    return
  end
end

puts "Yes"