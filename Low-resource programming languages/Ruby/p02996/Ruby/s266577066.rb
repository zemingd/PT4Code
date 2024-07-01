N = gets.to_i
AB = N.times.map { gets.split.map(&:to_i) }.sort_by! { |ab| ab[1] }

t = 0
AB.each do |ab|
  t += ab[0]
  if t > ab[1]
    puts 'No'
    exit
  end
end

puts 'Yes'
