n,x = gets.strip.split.map(&:to_i)
array = []
while number = gets
  array << number.chomp.to_i
end
puts (x-array.sum)/array.min+n