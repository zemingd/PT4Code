a,b = gets.strip.split
val = (a + b).to_i

(1..317).each do |i|
  if i**2 == val then
    puts "Yes"
    exit 0
  end
end

puts "No"