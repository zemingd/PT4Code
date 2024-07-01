number = gets.chomp.to_i
people = gets.chomp.split(" ").map(&:to_i)
result = []
(1..number).to_a.each do |e|
  result << (people.index(e)+1)
end

puts result.join(" ")