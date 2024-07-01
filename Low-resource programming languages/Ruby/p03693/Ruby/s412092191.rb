number = gets.strip.split.map(&:to_s).reduce(:+).to_i
puts number % 4 == 0 ? 'YES' : 'NO'
