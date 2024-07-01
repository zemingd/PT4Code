n = gets.to_i
x = []

n.times do
  x << gets.chomp.to_s
end
x = x.sort
x = x.group_by(&:itself).map{ |key, value| [key, value.count]}.to_h
max = x.values.max
x.each do |key, value|
  if (value == max) then
    puts "#{key}"
  end
end
