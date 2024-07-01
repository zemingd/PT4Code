a, b = gets.split(' ').map(&:to_i)

ab = "#{a}#{b}".to_i

max = Math.sqrt(ab).to_i+1
for x in 1..max do
  if x*x == ab
    puts 'Yes'
    exit
  end
end

puts 'No'
