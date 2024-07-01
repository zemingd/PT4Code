N = gets.to_i
S = gets.chomp

N.times do |i|
  S = S.tr('A-Z', 'B-ZA')
end
puts S