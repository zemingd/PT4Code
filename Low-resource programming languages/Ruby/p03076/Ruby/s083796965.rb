a, b, c, d, e = gets.to_i, gets.to_i, gets.to_i, gets.to_i, gets.to_i
order = [a, b, c, d, e].sort_by{|i| i.pred % 10}.reverse

p order.each_with_index.inject(0) {|res, (v, i)|
    res = i == 4 ? res + v : res + v.ceil(-1)
}