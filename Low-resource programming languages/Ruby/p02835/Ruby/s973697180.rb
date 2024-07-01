input = gets.split.map(&:to_i).inject(&:+)
puts input >= 22 ? 'bust': 'win'
