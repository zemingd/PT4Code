subs = [0] * gets.to_i
gets.split.map(&:to_i).each{|i| subs[i - 1] += 1}
puts subs.join(' ')
