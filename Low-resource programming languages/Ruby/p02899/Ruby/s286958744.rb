gets
list = gets.chop.split.map(&:to_i)
idx = 0
puts list.inject([]) { |acc, cur| acc << { id: idx += 1, num: cur } }.sort_by { |a| a[:num] }.map { |x| x[:id] }.join(' ')
