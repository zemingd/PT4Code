N = gets
arr = gets.split.map(&:to_i)

if arr[0] != 0
  puts 0
  exit
end

points = arr.sort.group_by { |i| i }.map{|k, v| [k, v.count]}.to_h


counter = 1
points.each_with_index do |(length, count), index|
  next if index == 0
  if length != index
    puts 0
    exit
  end

  counter *= points[index - 1] ** count
end

puts counter