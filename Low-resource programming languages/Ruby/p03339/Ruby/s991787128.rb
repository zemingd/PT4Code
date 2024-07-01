N = gets.chomp.to_i
S = gets.chomp.split('')

e_count = 0
S.each do |s|
  e_count += 1 if s == 'E'
end

min = Float::INFINITY
S.each do |s|
  e_count -= 1 if s == 'E'
  min = [min, e_count].min
  e_count += 1 if s == 'W'
end

puts min
