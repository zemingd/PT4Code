n = gets.strip.to_i
A=gets.strip.split.map(&:to_i)

if A.inject(:^).zero?
  puts 'Yes'
else
puts 'No'
end