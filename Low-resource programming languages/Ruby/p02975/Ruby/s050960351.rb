n = gets.strip.to_i
A=gets.strip.split.map(&:to_i)

result = A.all? {|a|
  current = A-[a]
  current.inject(:^)==a
}

if result
  puts 'Yes'
else
puts 'No'
end