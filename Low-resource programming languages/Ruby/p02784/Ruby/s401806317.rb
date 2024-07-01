h, n = readline.split(' ').map(&:to_i)
a = readline.split(' ').map(&:to_i)
ra = a.sort { |x,y| y <=> x }
ra.each do |da|
  h -= da
end

puts 'Yes' if h <= 0
puts 'No' if h > 0