n=gets.to_i
s=gets.split.map(&:to_s)

puts s.include?('Y') ? :Four : :Three