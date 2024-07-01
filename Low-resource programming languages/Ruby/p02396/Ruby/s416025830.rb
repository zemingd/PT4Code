x = gets.to_i
as = []
as << x

until x.zero?
  x = gets.to_i
  as << x
end

as.each_with_index do |a, i|
  break if i + 1 == as.size

  puts "Case #{i + 1}: #{a}"
end

