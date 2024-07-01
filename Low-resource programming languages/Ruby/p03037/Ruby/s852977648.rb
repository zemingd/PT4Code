n, m = gets.chomp.split(' ').map(&:to_i)

info = {}
m.times do |i|
  l, r = gets.chomp.split(' ').map(&:to_i)
  info[i] = [*l..r]
end

candidate_numbers = [*1..n]

info.each_value do |value|
  diff = candidate_numbers - value
  candidate_numbers = candidate_numbers - diff
end

puts candidate_numbers.size

