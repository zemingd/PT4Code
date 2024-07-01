a = gets.strip.split.map { |v| v.to_i }

if a.inject(&:+) >= 22
  puts 'bust'
  exit
end

puts 'win'
