a, b = gets.chomp.split.map(&:to_i)

flag = false

[1,2,3].each do |num|
  tmp = a * b * num

  flag = true if tmp.odd?
end

puts flag ? 'Yes': 'No'