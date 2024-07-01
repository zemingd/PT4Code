x = gets.split.map(&:to_i)

x.each_with_index do |v,i|
  puts i+1 if v == 0
end
