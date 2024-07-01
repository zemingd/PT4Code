order = Array.new(5) { gets.to_i }.map {|t| [t, (10 - t) % 10]}
order.sort_by! {|_, l| l }
puts order.inject(0) {|acc, tl| acc += tl[0] + tl[1] } - order[-1][1]