n = gets.chomp.split(' ').map(&:to_i)[0]
v = gets.chomp.split(' ').map(&:to_i)

v_even = v.select.with_index { |m, i| i.odd? }
v_odd = v.select.with_index { |m, i| i.even? }

odd_max = v_odd.max_by {|x| v_odd.count(x)}
v_even.delete(odd_max)
even_max = v_even.max_by {|x| v_even.count(x)}

puts n  - v_odd.count(odd_max) - v_even.count(even_max)