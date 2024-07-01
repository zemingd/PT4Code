# frozen_string_literal: true

n = gets.to_i
ab = n.times.map { gets.split.map(&:to_i) }

sab = ab.sort_by(&:last)

t = 0
sab.each do |e|
  a = e[0]
  b = e[1]
  t += a
  if t > b
    puts 'No'
    exit
  end
end
puts 'Yes'
