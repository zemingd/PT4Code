num = gets.to_i
orders = gets.split(' ').map(&:to_i).map.with_index { |n,i| [n, i + 1] }.sort_by {|i| i[0] }

puts orders.map { |order| order[1] }.join(' ')