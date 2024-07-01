n = gets.to_i
nums = gets.split.map(&:to_i)
colors = Hash.new(0)
nums.each do |num|
  if num < 400
    colors[:gray] = 1
  elsif num < 800
    colors[:brown] = 1
  elsif num < 1200
    colors[:green] = 1
  elsif num < 1600
    colors[:aqua] = 1
  elsif num < 2000
    colors[:blue] = 1
  elsif num < 2400
    colors[:yellow] = 1
  elsif num < 2800
    colors[:orange] = 1
  elsif num < 3200
    colors[:red] = 1
  else
    colors[:rainbow] += 1
  end
end
max = colors.values.inject(:+)
min = [max - colors[:rainbow], 1].max
puts "#{min} #{max}"
