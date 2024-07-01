N = gets.to_i
A = gets.split.map(&:to_i)

puts A.map.with_index { |a, i| [a, i + 1] }.sort_by { |ai| ai[0] }.map { |ai| ai[1] }.join(' ')
