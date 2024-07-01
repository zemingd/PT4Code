a, b, c, d = gets.split.map(&:to_f)

t_count = (c / b).ceil
a_count = (a / d).ceil

puts t_count <= a_count ? 'Yes' : 'No'
