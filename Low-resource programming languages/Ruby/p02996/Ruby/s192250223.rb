n = gets.chomp.to_i
ab = []
n.times do
  a,b= gets.chomp.split.map(&:to_i)
  ab.push([a, b])
end

ab.sort!{|i,j| i[1] <=> j[1] }

sum = 0
ab.each do |a, b| 
  sum += a
  if sum > b
    puts 'No'
    exit
  end
end

puts 'Yes'
