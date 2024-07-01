nums = gets.split.map(&:to_i)
puts nums.inject(:+) >= 22 ? 'bust' : 'win'
