h, n = gets.split.map(&:to_i)
specials = gets.split.map(&:to_i)

specials.each do |special|
  h -= special
end

puts h <= 0 ? 'Yes' : 'No'
